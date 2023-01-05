import streamlit as st  # pip install streamlit
import pandas as pd  # pip install pandas openpyxl
import plotly.express as px  # pip install plotly-express
import mysql.connector


st.set_page_config(page_title="5G KPI", page_icon=":bar_chart:", layout="wide")
# How to Run application: go to Streamlit-5G-Performance\streamlit run main.py
# ---- READ MYSQL ----
def app():
    conn = mysql.connector.connect( host="localhost",
                                    port="3308",
                                    user="root",
                                    passwd="",
                                    db="daily5gdata"
                                  )

    cursor = conn.cursor()
    cursor.execute('SELECT * FROM nok_fl21a');
    rows = cursor.fetchall()
    str(rows)[0:300]
    data = pd.DataFrame(rows)          # header setiap kolom masih berupa angka index
    data = pd.DataFrame([[ij for ij in i] for i in rows])    # mengganti header angka menjadi header name
    data.rename(columns={0: 'Period_start_time', 1: 'WS_NAME', 2: 'Cell_avail_R', 3: 'Cell_avail_exclud_BLU',
                       4: 'Counter_avail_R', 5: 'SA_access_SR', 6: 'SA_Init_UE_msg_sent_SR', 7: 'SA_NGAP_conn_estab_SR',
                       8: 'Init_ctx_stp_SR_gNBCU',
                       9: 'Init_ctx_stp_req_rcvd_gNBCU', 10: 'PDU_sess_rsrc_stp_req', 11: 'PDU_sess_rsrc_stp_SR',
                       12: 'NSA_call_access', 13: 'In_X2_stp_req_rx_LTE_eNB', 14: 'X2_stp_proc_SR',
                       15: 'Nr_SgNB_add_req', 16: 'SgNB_add_prep_SR', 17: 'Stat_transf_FR_dur_SgNB_add',
                       18: 'Stat_Trf_msg_rcvd_R_SgNB_add', 19: 'Nr_Succes_SgNB_reconfig', 20: 'SgNB_reconfig_SR',
                       21: 'Act_RACH_stp_SR', 22: 'Cont_based_RACH_stp_SR', 23: 'Content_based_RACH_stp_att',
                       24: 'Cont_free_RACH_stp_SR', 25: 'Cont_free_RACH_stp_att', 26: 'Avg_UE_dist_RACH_stp',
                       27: 'Abnorm_rel_R_due_to_RACH', 28: 'Tot_RRC_conn_estab_att', 29: 'RRC_conn_estab_SR',
                       30: 'RB_estab_SR', 31: 'RB_estab_att', 32: 'UE_ctx_stp_SR', 33: 'UE_ctx_stp_req',
                       34: 'UE_ctx_mod_SR', 35: 'UE_ctx_mod_att',
                       36: 'NSA_AC_SR_user', 37: 'NSA_Nr_AC_req_user', 38: 'NSA_Adm_rej_R_lack_PUCCH_rsrc',
                       39: 'AC_SR_SA_user', 40: 'Nr_AC_req_SA_user', 41: 'SA_Adm_rej_R_lack_PUCCH_rsrc',
                       42: 'SA_Norm_gNB_init_rel_R', 43: 'SgNB_trig_abnorm_rel_R', 44: 'Tot_nr_rel_SgNB_MeNB_X2_res',
                       45: 'SgNB_abnorm_rel_per_con_h', 46: 'SgNB_rel_R_UE_lost', 47: 'UE_rel_R_abnorm_rel',
                       48: 'UE_rel_R_X2_rst', 49: 'SgNB_rel_R_init_LTE_eNB', 50: 'SgNB_rel_R_UE_inact',
                       51: 'SgNB_rel_R_A2_meas', 52: 'NSA_Nr_UE_rel_RLF', 53: 'RRC_conn_estab_att_MO_voice',
                       54: 'RRC_rel_redir_vo_FB_LTE', 55: 'SA_nr_GBR_DBR_AC_req', 56: 'SA_GBR_DBR_stp_SR',
                       57: 'SA_avg_GBR_call_hold_t', 58: 'SA_Max_GBR_call_dur', 59: 'SA_GBR_traf_load_Erl',
                       60: 'SA_intracell_HO_prep_att', 61: 'SA_intracell_HO_tot_SR',
                       62: 'SA_intrafreq_intraDU_HO_prep_att', 63: 'SA_intrafreq_intraDU_HO_tot_SR',
                       64: 'SA_ingNB_interDU_HO_prep_att', 65: 'SA_ingNB_interDU_HO_tot_SR',
                       66: 'SA_intergNB_HO_src_exec_att', 67: 'SA_intergNB_HO_src_exec_SR',
                       68: 'Inafreq_inaDU_PSC_chg_tot_SR', 69: 'Inafreq_inaDU_PSC_change_prep_att',
                       70: 'Inafreq_inaDU_PSC_change_prep_SR', 71: 'Inafreq_inaDU_PSC_change_exec_att',
                       72: 'Inafreq_inaDU_PSC_change_exec_SR', 73: 'IntergNB_HO_SR_NSA', 74: 'IntergNB_HO_att_NSA',
                       75: 'Init_BLER_DL_PDSCH_tx', 76: 'Resid_BLER_DL', 77: 'UL_init_BLER_PUSCH_64QAM_tab',
                       78: 'UL_resid_BLER_PUSCH', 79: 'PDCP_SDU_disc_R_DL', 80: 'PDCP_SDU_disc_R_UL',
                       81: 'PDCP_PDU_lost_R_X2U_DL', 82: 'DL_RLC_PDU_retrans_R_hi_RLC',
                       83: 'UL_RLC_PDU_retrans_R_hi_RLC',
                       84: 'Avg_PDCP_SDU_delay_DL', 85: 'Avg_PDCP_SDU_delay_UL', 86: 'Avg_F1_rnd_trip_delay_CU_MAC_DU',
                       87: 'NSA_Avg_X2_rnd_trip_delay_CU_MAC_eNB', 88: 'Avg_wb_CQI_64QAM', 89: 'Avg_wb_CQI_256QAM',
                       90: 'Avg_UE_rel_SINR_PUSCH_rank1', 91: 'Avg_UE_rel_SINR_PUSCH_rank2',
                       92: 'Avg_UE_rel_RSSI_PUSCH',
                       93: 'Avg_UE_rel_SINR_PUCCH', 94: 'Avg_UE_rel_RSSI_PUCCH', 95: 'PDCP_SDU_dat_vol_tx_wo_rep_DL',
                       96: 'PDCP_SDU_dat_vol_rx_wo_rep_UL', 97: 'SA_PDCP_SDU_data_vol_tx_DL',
                       98: 'SA_PDCP_SDU_data_vol_rx_UL', 99: 'MAC_SDU_data_vol_trans_DL_DTCH',
                       100: 'MAC_SDU_data_vol_rcvd_UL_DTCH', 101: 'MAC_Cell_thp_act_PDSCH_data_slots',
                       102: 'MAC_Cell_thp_act_PUSCH_data_slots', 103: 'MAC_cell_thp_PDSCH_t_fram',
                       104: 'MAC_cell_thp_PUSCH_t_fram', 105: 'Act_cell_MAC_thp_PDSCH', 106: 'Act_cell_MAC_thp_PUSCH',
                       107: 'Avg_MAC_user_thp_DL_exc_DRX_sleep', 108: 'Avg_MAC_user_thp_UL',
                       109: 'Avg_DL_PDCP_SDU_Thr_UE_DRB_QoS_5_to_20', 110: 'Avg_UL_RLC_SDU_Thr_DRB_QoS_5_to_20',
                       111: 'DL_PDCP_SDU_VOL_QoS_5_to_20', 112: 'UL_RLC_SDU_VOL_DRB_QoS_5_to_20',
                       113: 'Avg_DL_PDCP_SDU_Thr_NR_leg_DRB_QoS_5_to_20', 114: 'DL_PDCP_SDU_VOL_5G_QoS_5_to_20',
                       115: 'DL_PDCP_SDU_end_user_throughput_per_DRB', 116: 'DL_PDCP_SDU_NR_leg_throughput_per_DRB',
                       117: 'UL_RLC_SDU_end_user_throughput_per_DRB', 118: 'Max_MAC_SDU_Cell_Thr_DL_DTCH',
                       119: 'Max_MAC_SDU_Cell_Thr_UL_DTCH',
                       120: 'Sched_user_thp_DL', 121: 'Avg_DL_MCS_64QAM', 122: 'Avg_DL_MCS_256QAM', 123: 'Avg_DL_rank',
                       124: 'R_init_tx_256QAM_DL', 125: 'Rank4_share_DL', 126: 'Rank4_256QAM_share_DL',
                       127: 'Avg_UL_MCS_64QAM', 128: 'Avg_UL_MCS_256QAM',
                       129: 'PRB_util_PDSCH', 130: 'PRB_util_PUSCH', 131: 'PDSCH_sl_per_all_DL_dat_sl_R',
                       132: 'PUSCH_sl_per_all_UL_dat_sl_R', 133: 'Spectr_effic_DL', 134: 'Spectr_effic_UL',
                       135: 'Avg_nr_act_UEs_data_buff_DRBs_DL', 136: 'Avg_nr_act_UEs_data_buff_DRBs_UL',
                       137: 'Max_nr_UEs_data_in_buff_DRBs_DL',
                       138: 'Max_nr_UEs_data_in_buff_DRBs_UL', 139: 'NSA_Avg_nr_user', 140: 'Max_nr_NSA_user',
                       141: 'SA_Avg_nr_nonGBR_RRC_conn_UEs', 142: 'SA_Avg_nr_nonGBR_UEs', 143: 'Max_SA_RRC_users',
                       144: 'Max_SA_nonGBR_DRB_users', 145: 'Nr_Cpl_overload_fails', 146: 'DL_CA_reconf_SR',
                       147: 'DL_CA_reconf_att', 148: 'UL_CA_reconf_SR', 149: 'UL_CA_reconf_att',
                       150: 'Nr_NR_cell_DSS_activ', 151: 'DSS_Avg_R_DL_slot_assig_NR', 152: 'DSS_Avg_UL_PRB_assig_NR',
                       153: 'F1_stp_SR', 154: 'F1_stp_att', 155: 'Avg_est_thp_F1U',
                       156: 'Avg_est_DL_thp_X2U', 157: 'F1_data_split_R_DL', 158: 'F1_data_split_R_UL', 159: 'Nr_NRCEL',
                       160: 'Nr_gNB_DU', 161: 'Nr_NRBTS', 162: 'Critical_Alarms', 163: 'Major_Alarms',
                       164: 'Minor_Alarms_Minor',
                       165: 'Warning_Alarms', 166: 'Duration_Critical_Alarms', 167: 'Duration_Major_Alarms',
                       168: 'Duration_Minor_Alarms', 169: 'Duration_Warning_Alarms', 170: 'Communication_Alarms',
                       171: 'Environmental_Alarms', 172: 'Equipment_Alarms', 173: 'Processing_Alarms',
                       174: 'Quality_of_Service_Alarms'}, inplace=True);
    df = pd.DataFrame(data, columns=['Period_start_time',        # memilih kolom KPI dari semua KPI diatas
                                   'WS_NAME',
                                   'Cont_free_RACH_stp_SR',
                                   'Cont_free_RACH_stp_att',
                                   'SgNB_trig_abnorm_rel_R',
                                   'Tot_nr_rel_SgNB_MeNB_X2_res',
                                   'SgNB_abnorm_rel_per_con_h',
                                   'SgNB_rel_R_UE_lost',
                                   'UE_rel_R_abnorm_rel',
                                   'UE_rel_R_X2_rst',
                                   'IntergNB_HO_SR_NSA',
                                   'IntergNB_HO_att_NSA',
                                   'Init_BLER_DL_PDSCH_tx',
                                   'Avg_UE_rel_SINR_PUCCH',
                                   'Avg_UE_rel_RSSI_PUCCH',
                                   'Max_nr_UEs_data_in_buff_DRBs_UL',
                                   'Max_nr_UEs_data_in_buff_DRBs_DL',
                                   'Max_nr_NSA_user',
                                   'NSA_Avg_nr_user',
                                   'Spectr_effic_DL',
                                   'Spectr_effic_UL',
                                   'Avg_MAC_user_thp_DL_exc_DRX_sleep']
                      )
    df.to_csv("KPI_5G_Test.csv")
    df = pd.read_csv('KPI_5G_Test.csv')
    df.drop('Unnamed: 0', axis='columns', inplace=True)

    st.subheader("Data diambil dari kaggle :")
    st.markdown("[DOWNLOAD](https://www.kaggle.com/andrewmvd/heart-failure-clinical-data)")
    st.dataframe(df)

    shwdata = st.multiselect('Pilih Kolom yang mau ditampilkan:', df.columns, default=[])
    st.write(df[shwdata])

    st.text('Yudhi Irawan')