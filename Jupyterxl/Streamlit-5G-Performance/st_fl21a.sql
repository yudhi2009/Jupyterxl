-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2022 at 01:34 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `daily5gdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `st_fl21a`
--

CREATE TABLE `st_fl21a` (
    `COL 1` varchar(10) DEFAULT NULL,
    `COL 2` varchar(15) DEFAULT NULL,
    `COL 3` varchar(7) DEFAULT NULL,
    `COL 4` varchar(7) DEFAULT NULL,
    `COL 5` varchar(7) DEFAULT NULL,
    `COL 6` varchar(4) DEFAULT NULL,
    `COL 7` varchar(4) DEFAULT NULL,
    `COL 8` varchar(4) DEFAULT NULL,
    `COL 9` varchar(4) DEFAULT NULL,
    `COL 10` varchar(1) DEFAULT NULL,
    `COL 11` varchar(1) DEFAULT NULL,
    `COL 12` varchar(4) DEFAULT NULL,
    `COL 13` varchar(7) DEFAULT NULL,
    `COL 14` varchar(7) DEFAULT NULL,
    `COL 15` varchar(7) DEFAULT NULL,
    `COL 16` varchar(7) DEFAULT NULL,
    `COL 17` varchar(7) DEFAULT NULL,
    `COL 18` varchar(10) DEFAULT NULL,
    `COL 19` varchar(7) DEFAULT NULL,
    `COL 20` varchar(7) DEFAULT NULL,
    `COL 21` varchar(7) DEFAULT NULL,
    `COL 22` varchar(7) DEFAULT NULL,
    `COL 23` varchar(7) DEFAULT NULL,
    `COL 24` varchar(7) DEFAULT NULL,
    `COL 25` varchar(7) DEFAULT NULL,
    `COL 26` varchar(7) DEFAULT NULL,
    `COL 27` varchar(7) DEFAULT NULL,
    `COL 28` varchar(7) DEFAULT NULL,
    `COL 29` varchar(7) DEFAULT NULL,
    `COL 30` varchar(1) DEFAULT NULL,
    `COL 31` varchar(7) DEFAULT NULL,
    `COL 32` varchar(7) DEFAULT NULL,
    `COL 33` varchar(7) DEFAULT NULL,
    `COL 34` varchar(7) DEFAULT NULL,
    `COL 35` varchar(7) DEFAULT NULL,
    `COL 36` varchar(7) DEFAULT NULL,
    `COL 37` varchar(7) DEFAULT NULL,
    `COL 38` varchar(7) DEFAULT NULL,
    `COL 39` varchar(10) DEFAULT NULL,
    `COL 40` varchar(4) DEFAULT NULL,
    `COL 41` varchar(4) DEFAULT NULL,
    `COL 42` varchar(4) DEFAULT NULL,
    `COL 43` varchar(4) DEFAULT NULL,
    `COL 44` varchar(10) DEFAULT NULL,
    `COL 45` varchar(10) DEFAULT NULL,
    `COL 46` varchar(10) DEFAULT NULL,
    `COL 47` varchar(10) DEFAULT NULL,
    `COL 48` varchar(10) DEFAULT NULL,
    `COL 49` varchar(10) DEFAULT NULL,
    `COL 50` varchar(10) DEFAULT NULL,
    `COL 51` varchar(10) DEFAULT NULL,
    `COL 52` varchar(10) DEFAULT NULL,
    `COL 53` varchar(10) DEFAULT NULL,
    `COL 54` varchar(2) DEFAULT NULL,
    `COL 55` varchar(1) DEFAULT NULL,
    `COL 56` varchar(4) DEFAULT NULL,
    `COL 57` varchar(4) DEFAULT NULL,
    `COL 58` varchar(4) DEFAULT NULL,
    `COL 59` varchar(4) DEFAULT NULL,
    `COL 60` varchar(4) DEFAULT NULL,
    `COL 61` varchar(1) DEFAULT NULL,
    `COL 62` varchar(4) DEFAULT NULL,
    `COL 63` varchar(1) DEFAULT NULL,
    `COL 64` varchar(4) DEFAULT NULL,
    `COL 65` varchar(1) DEFAULT NULL,
    `COL 66` varchar(4) DEFAULT NULL,
    `COL 67` varchar(1) DEFAULT NULL,
    `COL 68` varchar(4) DEFAULT NULL,
    `COL 69` varchar(7) DEFAULT NULL,
    `COL 70` varchar(7) DEFAULT NULL,
    `COL 71` varchar(7) DEFAULT NULL,
    `COL 72` varchar(7) DEFAULT NULL,
    `COL 73` varchar(7) DEFAULT NULL,
    `COL 74` varchar(7) DEFAULT NULL,
    `COL 75` varchar(7) DEFAULT NULL,
    `COL 76` varchar(7) DEFAULT NULL,
    `COL 77` varchar(10) DEFAULT NULL,
    `COL 78` varchar(7) DEFAULT NULL,
    `COL 79` varchar(10) DEFAULT NULL,
    `COL 80` varchar(10) DEFAULT NULL,
    `COL 81` varchar(10) DEFAULT NULL,
    `COL 82` varchar(10) DEFAULT NULL,
    `COL 83` varchar(10) DEFAULT NULL,
    `COL 84` varchar(7) DEFAULT NULL,
    `COL 85` varchar(7) DEFAULT NULL,
    `COL 86` varchar(7) DEFAULT NULL,
    `COL 87` varchar(7) DEFAULT NULL,
    `COL 88` varchar(7) DEFAULT NULL,
    `COL 89` varchar(7) DEFAULT NULL,
    `COL 90` varchar(7) DEFAULT NULL,
    `COL 91` varchar(7) DEFAULT NULL,
    `COL 92` varchar(4) DEFAULT NULL,
    `COL 93` varchar(7) DEFAULT NULL,
    `COL 94` varchar(7) DEFAULT NULL,
    `COL 95` varchar(7) DEFAULT NULL,
    `COL 96` varchar(255) DEFAULT NULL,
    `COL 97` varchar(7) DEFAULT NULL,
    `COL 98` varchar(4) DEFAULT NULL,
    `COL 99` varchar(4) DEFAULT NULL,
    `COL 100` varchar(10) DEFAULT NULL,
    `COL 101` varchar(10) DEFAULT NULL,
    `COL 102` varchar(10) DEFAULT NULL,
    `COL 103` varchar(10) DEFAULT NULL,
    `COL 104` varchar(10) DEFAULT NULL,
    `COL 105` varchar(10) DEFAULT NULL,
    `COL 106` varchar(10) DEFAULT NULL,
    `COL 107` varchar(10) DEFAULT NULL,
    `COL 108` varchar(10) DEFAULT NULL,
    `COL 109` varchar(10) DEFAULT NULL,
    `COL 110` varchar(4) DEFAULT NULL,
    `COL 111` varchar(4) DEFAULT NULL,
    `COL 112` varchar(4) DEFAULT NULL,
    `COL 113` varchar(4) DEFAULT NULL,
    `COL 114` varchar(4) DEFAULT NULL,
    `COL 115` varchar(4) DEFAULT NULL,
    `COL 116` varchar(4) DEFAULT NULL,
    `COL 117` varchar(4) DEFAULT NULL,
    `COL 118` varchar(4) DEFAULT NULL,
    `COL 119` varchar(4) DEFAULT NULL,
    `COL 120` varchar(4) DEFAULT NULL,
    `COL 121` varchar(7) DEFAULT NULL,
    `COL 122` varchar(7) DEFAULT NULL,
    `COL 123` varchar(7) DEFAULT NULL,
    `COL 124` varchar(7) DEFAULT NULL,
    `COL 125` varchar(7) DEFAULT NULL,
    `COL 126` varchar(7) DEFAULT NULL,
    `COL 127` varchar(7) DEFAULT NULL,
    `COL 128` varchar(7) DEFAULT NULL,
    `COL 129` varchar(4) DEFAULT NULL,
    `COL 130` varchar(7) DEFAULT NULL,
    `COL 131` varchar(7) DEFAULT NULL,
    `COL 132` varchar(7) DEFAULT NULL,
    `COL 133` varchar(7) DEFAULT NULL,
    `COL 134` varchar(7) DEFAULT NULL,
    `COL 135` varchar(7) DEFAULT NULL,
    `COL 136` varchar(7) DEFAULT NULL,
    `COL 137` varchar(7) DEFAULT NULL,
    `COL 138` varchar(2) DEFAULT NULL,
    `COL 139` varchar(2) DEFAULT NULL,
    `COL 140` varchar(7) DEFAULT NULL,
    `COL 141` varchar(7) DEFAULT NULL,
    `COL 142` varchar(4) DEFAULT NULL,
    `COL 143` varchar(4) DEFAULT NULL,
    `COL 144` varchar(4) DEFAULT NULL,
    `COL 145` varchar(4) DEFAULT NULL,
    `COL 146` varchar(1) DEFAULT NULL,
    `COL 147` varchar(7) DEFAULT NULL,
    `COL 148` varchar(7) DEFAULT NULL,
    `COL 149` varchar(4) DEFAULT NULL,
    `COL 150` varchar(1) DEFAULT NULL,
    `COL 151` varchar(4) DEFAULT NULL,
    `COL 152` varchar(4) DEFAULT NULL,
    `COL 153` varchar(4) DEFAULT NULL,
    `COL 154` varchar(3) DEFAULT NULL,
    `COL 155` varchar(2) DEFAULT NULL,
    `COL 156` varchar(7) DEFAULT NULL,
    `COL 157` varchar(7) DEFAULT NULL,
    `COL 158` varchar(7) DEFAULT NULL,
    `COL 159` varchar(7) DEFAULT NULL,
    `COL 160` varchar(3) DEFAULT NULL,
    `COL 161` varchar(3) DEFAULT NULL,
    `COL 162` varchar(3) DEFAULT NULL,
    `COL 163` varchar(3) DEFAULT NULL,
    `COL 164` varchar(3) DEFAULT NULL,
    `COL 165` varchar(3) DEFAULT NULL,
    `COL 166` varchar(3) DEFAULT NULL,
    `COL 167` varchar(3) DEFAULT NULL,
    `COL 168` varchar(3) DEFAULT NULL,
    `COL 169` varchar(3) DEFAULT NULL,
    `COL 170` varchar(3) DEFAULT NULL,
    `COL 171` varchar(3) DEFAULT NULL,
    `COL 172` varchar(3) DEFAULT NULL,
    `COL 173` varchar(3) DEFAULT NULL,
    `COL 174` varchar(3) DEFAULT NULL,
    `COL 175` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `st_fl21a`
--

INSERT INTO `st_fl21a` (`COL 1`,`COL 2`,`COL 3`,`COL 4`,`COL 5`,`COL 6`,`COL 7`,`COL 8`,`COL 9`,`COL 10`,`COL 11`,`COL 12`,`COL 13`,`COL 14`,`COL 15`,`COL 16`,`COL 17`,`COL 18`,`COL 19`,`COL 20`,`COL 21`,`COL 22`,`COL 23`,`COL 24`,`COL 25`,`COL 26`,`COL 27`,`COL 28`,`COL 29`,`COL 30`,`COL 31`,`COL 32`,`COL 33`,`COL 34`,`COL 35`,`COL 36`,`COL 37`,`COL 38`,`COL 39`,`COL 40`,`COL 41`,`COL 42`,`COL 43`,`COL 44`,`COL 45`,`COL 46`,`COL 47`,`COL 48`,`COL 49`,`COL 50`,`COL 51`,`COL 52`,`COL 53`,`COL 54`,`COL 55`,`COL 56`,`COL 57`,`COL 58`,`COL 59`,`COL 60`,`COL 61`,`COL 62`,`COL 63`,`COL 64`,`COL 65`,`COL 66`,`COL 67`,`COL 68`,`COL 69`,`COL 70`,`COL 71`,`COL 72`,`COL 73`,`COL 74`,`COL 75`,`COL 76`,`COL 77`,`COL 78`,`COL 79`,`COL 80`,`COL 81`,`COL 82`,`COL 83`,`COL 84`,`COL 85`,`COL 86`,`COL 87`,`COL 88`,`COL 89`,`COL 90`,`COL 91`,`COL 92`,`COL 93`,`COL 94`,`COL 95`,`COL 96`,`COL 97`,`COL 98`,`COL 99`,`COL 100`,`COL 101`,`COL 102`,`COL 103`,`COL 104`,`COL 105`,`COL 106`,`COL 107`,`COL 108`,`COL 109`,`COL 110`,`COL 111`,`COL 112`,`COL 113`,`COL 114`,`COL 115`,`COL 116`,`COL 117`,`COL 118`,`COL 119`,`COL 120`,`COL 121`,`COL 122`,`COL 123`,`COL 124`,`COL 125`,`COL 126`,`COL 127`,`COL 128`,`COL 129`,`COL 130`,`COL 131`,`COL 132`,`COL 133`,`COL 134`,`COL 135`,`COL 136`,`COL 137`,`COL 138`,`COL 139`,`COL 140`,`COL 141`,`COL 142`,`COL 143`,`COL 144`,`COL 145`,`COL 146`,`COL 147`,`COL 148`,`COL 149`,`COL 150`,`COL 151`,`COL 152`,`COL 153`,`COL 154`,`COL 155`,`COL 156`,`COL 157`,`COL 158`,`COL 159`,`COL 160`,`COL 161`,`COL 162`,`COL 163`,`COL 164`,`COL 165`,`COL 166`,`COL 167`,`COL 168`,`COL 169`,`COL 170`,`COL 171`,`COL 172`,`COL 173`,`COL 174`,`COL 175`) VALUES
('Period_start_time', 'WS_NAME', 'Cell_avail_R', 'Cell_avail_exclud_BLU', 'Counter_avail_R', 'SA_access_SR', 'SA_Init_UE_msg_sent_SR', 'SA_NGAP_conn_estab_SR', 'Init_ctx_stp_SR_gNBCU', 'Init_ctx_stp_req_rcvd_gNBCU', 'PDU_sess_rsrc_stp_req', 'PDU_sess_rsrc_stp_SR', 'NSA_call_access', 'In_X2_stp_req_rx_LTE_eNB', 'X2_stp_proc_SR', 'Nr_SgNB_add_req', 'SgNB_add_prep_SR', 'Stat_transf_FR_dur_SgNB_add', 'Stat_Trf_msg_rcvd_R_SgNB_add', 'Nr_Succes_SgNB_reconfig', 'SgNB_reconfig_SR', 'Act_RACH_stp_SR', 'Cont_based_RACH_stp_SR', 'Content_based_RACH_stp_att', 'Cont_free_RACH_stp_SR', 'Cont_free_RACH_stp_att', 'Avg_UE_dist_RACH_stp', 'Abnorm_rel_R_due_to_RACH', 'Tot_RRC_conn_estab_att', 'RRC_conn_estab_SR', 'RB_estab_SR', 'RB_estab_att', 'UE_ctx_stp_SR', 'UE_ctx_stp_req', 'UE_ctx_mod_SR', 'UE_ctx_mod_att', 'NSA_AC_SR_user', 'NSA_Nr_AC_req_user', 'NSA_Adm_rej_R_lack_PUCCH_rsrc', 'AC_SR_SA_user', 'Nr_AC_req_SA_user', 'SA_Adm_rej_R_lack_PUCCH_rsrc', 'SA_Norm_gNB_init_rel_R', 'SgNB_trig_abnorm_rel_R', 'Tot_nr_rel_SgNB_MeNB_X2_res', 'SgNB_abnorm_rel_per_con_h', 'SgNB_rel_R_UE_lost', 'UE_rel_R_abnorm_rel', 'UE_rel_R_X2_rst', 'SgNB_rel_R_init_LTE_eNB', 'SgNB_rel_R_UE_inact', 'SgNB_rel_R_A2_meas', 'NSA_Nr_UE_rel_RLF', 'RRC_conn_estab_att_MO_voice', 'RRC_rel_redir_vo_FB_LTE', 'SA_nr_GBR_DBR_AC_req', 'SA_GBR_DBR_stp_SR', 'SA_avg_GBR_call_hold_t', 'SA_Max_GBR_call_dur', 'SA_GBR_traf_load_Erl', 'SA_intracell_HO_prep_att', 'SA_intracell_HO_tot_SR', 'SA_intrafreq_intraDU_HO_prep_att', 'SA_intrafreq_intraDU_HO_tot_SR', 'SA_ingNB_interDU_HO_prep_att', 'SA_ingNB_interDU_HO_tot_SR', 'SA_intergNB_HO_src_exec_att', 'SA_intergNB_HO_src_exec_SR', 'Inafreq_inaDU_PSC_chg_tot_SR', 'Inafreq_inaDU_PSC_change_prep_att', 'Inafreq_inaDU_PSC_change_prep_SR', 'Inafreq_inaDU_PSC_change_exec_att', 'Inafreq_inaDU_PSC_change_exec_SR', 'IntergNB_HO_SR_NSA', 'IntergNB_HO_att_NSA', 'Init_BLER_DL_PDSCH_tx', 'Resid_BLER_DL', 'UL_init_BLER_PUSCH_64QAM_tab', 'UL_resid_BLER_PUSCH', 'PDCP_SDU_disc_R_DL', 'PDCP_SDU_disc_R_UL', 'PDCP_PDU_lost_R_X2U_DL', 'DL_RLC_PDU_retrans_R_hi_RLC', 'UL_RLC_PDU_retrans_R_hi_RLC', 'Avg_PDCP_SDU_delay_DL', 'Avg_PDCP_SDU_delay_UL', 'Avg_F1_rnd_trip_delay_CU_MAC_DU', 'NSA_Avg_X2_rnd_trip_delay_CU_MAC_eNB', 'Avg_wb_CQI_64QAM', 'Avg_wb_CQI_256QAM', 'Avg_UE_rel_SINR_PUSCH_rank1', 'Avg_UE_rel_SINR_PUSCH_rank2', 'Avg_UE_rel_RSSI_PUSCH', 'Avg_UE_rel_SINR_PUCCH', 'Avg_UE_rel_RSSI_PUCCH', 'PDCP_SDU_dat_vol_tx_wo_rep_DL', 'PDCP_SDU_dat_vol_rx_wo_rep_UL', 'SA_PDCP_SDU_data_vol_tx_DL', 'SA_PDCP_SDU_data_vol_rx_UL', 'MAC_SDU_data_vol_trans_DL_DTCH', 'MAC_SDU_data_vol_rcvd_UL_DTCH', 'MAC_Cell_thp_act_PDSCH_data_slots', 'MAC_Cell_thp_act_PUSCH_data_slots', 'MAC_cell_thp_PDSCH_t_fram', 'MAC_cell_thp_PUSCH_t_fram', 'Act_cell_MAC_thp_PDSCH', 'Act_cell_MAC_thp_PUSCH', 'Avg_MAC_user_thp_DL_exc_DRX_sleep', 'Avg_MAC_user_thp_UL', 'Avg_DL_PDCP_SDU_Thr_UE_DRB_QoS_5_to_20', 'Avg_UL_RLC_SDU_Thr_DRB_QoS_5_to_20', 'DL_PDCP_SDU_VOL_QoS_5_to_20', 'UL_RLC_SDU_VOL_DRB_QoS_5_to_20', 'Avg_DL_PDCP_SDU_Thr_NR_leg_DRB_QoS_5_to_20', 'DL_PDCP_SDU_VOL_5G_QoS_5_to_20', 'DL_PDCP_SDU_end_user_throughput_per_DRB', 'DL_PDCP_SDU_NR_leg_throughput_per_DRB', 'UL_RLC_SDU_end_user_throughput_per_DRB', 'Max_MAC_SDU_Cell_Thr_DL_DTCH', 'Max_MAC_SDU_Cell_Thr_UL_DTCH', 'Sched_user_thp_DL', 'Avg_DL_MCS_64QAM', 'Avg_DL_MCS_256QAM', 'Avg_DL_rank', 'R_init_tx_256QAM_DL', 'Rank4_share_DL', 'Rank4_256QAM_share_DL', 'Avg_UL_MCS_64QAM', 'Avg_UL_MCS_256QAM', 'PRB_util_PDSCH', 'PRB_util_PUSCH', 'PDSCH_sl_per_all_DL_dat_sl_R', 'PUSCH_sl_per_all_UL_dat_sl_R', 'Spectr_effic_DL', 'Spectr_effic_UL', 'Avg_nr_act_UEs_data_buff_DRBs_DL', 'Avg_nr_act_UEs_data_buff_DRBs_UL', 'Max_nr_UEs_data_in_buff_DRBs_DL', 'Max_nr_UEs_data_in_buff_DRBs_UL', 'NSA_Avg_nr_user', 'Max_nr_NSA_user', 'SA_Avg_nr_nonGBR_RRC_conn_UEs', 'SA_Avg_nr_nonGBR_UEs', 'Max_SA_RRC_users', 'Max_SA_nonGBR_DRB_users', 'Nr_Cpl_overload_fails', 'DL_CA_reconf_SR', 'DL_CA_reconf_att', 'UL_CA_reconf_SR', 'UL_CA_reconf_att', 'Nr_NR_cell_DSS_activ', 'DSS_Avg_R_DL_slot_assig_NR', 'DSS_Avg_UL_PRB_assig_NR', 'F1_stp_SR', 'F1_stp_att', 'Avg_est_thp_F1U', 'Avg_est_DL_thp_X2U', 'F1_data_split_R_DL', 'F1_data_split_R_UL', 'Nr_NRCEL', 'Nr_gNB_DU', 'Nr_NRBTS', 'Critical_Alarms', 'Major_Alarms', 'Minor_Alarms_Minor', 'Warning_Alarms', 'Duration_Critical_Alarms', 'Duration_Major_Alarms', 'Duration_Minor_Alarms', 'Duration_Warning_Alarms', 'Communication_Alarms', 'Environmental_Alarms', 'Equipment_Alarms', 'Processing_Alarms', 'Quality_of_Service_Alarms'),
('2022-01-17', 'SBS_5GC000430_Taif', 96.3376, 99.9607, 99.9544, NULL, NULL, NULL, NULL, 0, 0, NULL, 99.9882, 1503, 99.7339, 9170570, 99.9965, 0, 100, 9166260, 99.9917, 97.1416, 85.5441, 16529300, 99.2312, 1550330, 785.776, 4.06897, 296, 0, 99.9958, 10272400, 100, 10271900, 99.9958, 49357800, 99.9992, 9170320, 0, NULL, NULL, NULL, NULL, 0.375722, 10876700, 0.233693, 0.368225, 0.00619684, 0.00130555, 31.9183, 62.7355, 4.1273, 501259, 9, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 99.8683, 449417, 99.9998, 449416, 99.8685, 82.6366, 1335310, 2.48078, 0.0561015, 11.525, 0.443499, 0.0151181, 0.113262, 0.102312, 0.423882, 28.0453, 6263.13, 766.52, 13.0711, 19.5437, 9.36209, 10.1078, 16.1556, NULL, -96.7442, 15.5204, -94.4741, 99734100, 6361170, 0, 0, 84241700, 968009, 91.8748, 6.0586, 59.4252, 1.15554, 113.711, 7.01857, 19.7437, 1.14852, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 52.5529, 9.62275, 6.90664, 2.0931, 2.41977, 2.84872, 0.0170659, 16.5843, NULL, 7.37769, 1.81414, 26.0813, 41.6428, 4.61246, 1.82353, 0.836058, 0.165036, 42, 20, 7633.75, 113, NULL, NULL, NULL, NULL, 0, 99.7814, 915, NULL, 0, NULL, NULL, NULL, 100, 5, 17.5661, 12.4029, 83.6829, 14.6426, 479, 159, 158, 2, 245, 32, 0, 59, 2674, 8506, 0, 244, 0, 0, 10, 25),
('2022-01-18', 'SBS_5GC000430_Taif', 96.3311, 99.9872, 99.9695, NULL, NULL, NULL, NULL, 0, 0, NULL, 99.9912, 1683, 99.8217, 9218780, 99.9996, 0, 100, 9215040, 99.9916, 97.0873, 85.7786, 16366700, 99.2842, 1553750, 786.694, 4.09734, 238, 0, 99.9991, 10327200, 100, 10327100, 99.9958, 49694300, 99.9999, 9218730, 0, NULL, NULL, NULL, NULL, 0.368255, 10941600, 0.227419, 0.363531, 0.00425899, 0.000466111, 32.0859, 62.5733, 4.13761, 507146, 9, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 99.8665, 448000, 100, 448000, 99.8665, 81.6366, 1360520, 2.4936, 0.0534496, 11.5808, 0.445534, 0.0099729, 0.111616, 0.102527, 0.438071, 38.6249, 6197.34, 767.859, 12.9762, 19.3654, 7.8916, 10.1026, 16.0953, NULL, -96.7924, 15.4931, -94.5381, 102355000, 6296400, 0, 0, 87342800, 964257, 92.6214, 5.96883, 59.9491, 1.13785, 114.622, 6.91525, 19.8132, 1.11028, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 52.7154, 6.45346, 6.97494, 2.08728, 2.43878, 2.72743, 0.0134202, 16.5192, NULL, 7.68908, 1.83714, 26.845, 42.2504, 4.58431, 1.80051, 0.86395, 0.170069, 40, 17, 7695.74, 115, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 100, 4, 17.44, 12.057, 84.533, 14.7119, 473, 159, 158, 0, 356, 18, 0, 0, 1812, 5148, 0, 356, 0, 0, 4, 14),
('2022-01-19', 'SBS_5GC000430_Taif', 96.5906, 99.9555, 99.889, NULL, NULL, NULL, NULL, 0, 0, NULL, 99.9893, 1826, 100, 9189340, 99.9997, 0, 100, 9184990, 99.9897, 97.0681, 85.2126, 16582100, 99.2318, 1575960, 790.951, 4.16031, 612, 0, 99.9997, 10309100, 100, 10309100, 99.9935, 49649000, 99.9997, 9189270, 0.0000095897, NULL, NULL, NULL, NULL, 0.371961, 10920000, 0.231558, 0.365995, 0.00477113, 0.00119964, 32.2586, 62.3203, 4.2111, 513911, 8, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 99.8706, 450399, 100, 450399, 99.8706, 82.0405, 1367240, 2.52371, 0.0561647, 11.6378, 0.447458, 0.0103806, 0.116626, 0.105172, 0.453637, 20.8509, 6295.13, 794.569, 13.0475, 19.3778, 8.3988, 10.0935, 16.0529, NULL, -96.8334, 15.4854, -94.5268, 100248000, 6338280, 0, 0, 85178000, 957250, 91.8547, 5.56085, 59.4564, 1.0658, 113.646, 6.44054, 19.6451, 1.11423, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 52.1762, 9.34387, 6.90653, 2.0817, 2.38801, 2.72827, 0.0144205, 16.464, NULL, 7.55474, 1.72798, 26.3378, 41.7969, 4.55253, 1.77594, 0.847957, 0.167846, 37, 18, 7635.98, 113, NULL, NULL, NULL, NULL, 0, 99.8092, 6813, NULL, 0, NULL, NULL, NULL, 100, 10, 17.3329, 12.2754, 84.1564, 14.5141, 482, 159, 158, 5, 642, 61, 0, 74, 4454, 22659, 0, 647, 0, 0, 11, 50),
('2022-01-20', 'SBS_5GC000430_Taif', 96.5868, 99.8397, 99.894, NULL, NULL, NULL, NULL, 0, 0, NULL, 99.9912, 2029, 99.0636, 9300320, 99.999, 0.00000956868, 100, 9296690, 99.9922, 97.1347, 85.1621, 16977700, 99.0005, 1645790, 801.805, 4.09714, 218, 0, 99.9989, 10455500, 99.9991, 10455500, 99.9934, 50590400, 99.9998, 9300390, 0, NULL, NULL, NULL, NULL, 0.378424, 11108700, 0.237844, 0.371268, 0.00462712, 0.00253855, 32.8006, 61.6807, 4.28009, 515706, 15, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 99.8638, 470745, 99.9996, 470743, 99.8643, 81.5006, 1420340, 2.63841, 0.0621534, 11.6828, 0.452795, 0.0113447, 0.111647, 0.113153, 0.463953, 29.2713, 6639.32, 803.584, 13.1156, 19.5139, 7.57765, 10.1, 16.0465, NULL, -96.763, 15.4225, -94.4793, 103587000, 6394820, 0, 0, 87848400, 978000, 94.0603, 5.61531, 61.0465, 1.08109, 116.339, 6.49831, 20.5538, 1.14439, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 53.6484, 11.1377, 7.00218, 2.07127, 2.46527, 2.69198, 0.0153963, 16.4791, NULL, 7.78061, 1.74071, 26.4621, 41.5031, 4.56386, 1.77688, 0.833939, 0.166637, 39, 16, 7609.75, 110, NULL, NULL, NULL, NULL, 0, 99.3224, 11511, NULL, 0, NULL, NULL, NULL, 100, 9, 18.2818, 12.7062, 83.9912, 14.7041, 491, 159, 158, 2, 988, 63, 0, 29, 8947, 5797, 0, 990, 0, 0, 19, 44),
('2022-01-21', 'SBS_5GC000430_Taif', 96.2942, 99.8262, 99.7321, NULL, NULL, NULL, NULL, 0, 0, NULL, 99.9915, 1792, 99.2746, 8603380, 99.9989, 0, 100, 8600220, 99.9926, 97.2014, 84.7356, 15568400, 98.9069, 1416450, 796.899, 3.94348, 185, 0, 99.9973, 9610460, 100, 9610200, 99.9961, 46241900, 100, 8603290, 0, NULL, NULL, NULL, NULL, 0.361136, 10234400, 0.226002, 0.35634, 0.00442628, 0.000371298, 32.0321, 62.4571, 4.25965, 456515, 15, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 99.8571, 409379, 99.9998, 409378, 99.8573, 81.6931, 1234770, 2.64571, 0.0599084, 11.5829, 0.463968, 0.0111991, 0.11981, 0.0955853, 0.452356, 29.7012, 5778.07, 851.322, 13.3859, 19.6869, 8.34367, 10.1165, 16.1012, NULL, -96.7386, 15.5369, -94.3371, 104761000, 6223850, 0, 0, 88657200, 998979, 99.3839, 5.98414, 64.1725, 1.14067, 122.909, 6.9358, 21.8288, 1.2741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 56.8159, 12.176, 7.42589, 2.08788, 2.7695, 2.73665, 0.0212399, 16.5339, NULL, 7.65507, 1.66752, 25.475, 38.2402, 4.68333, 1.80117, 0.798197, 0.153962, 38, 17, 7181.99, 108, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 100, 8, 19.9957, 12.9007, 83.8333, 15.4518, 473, 159, 158, 13, 507, 85, 3, 231, 1944, 5520, 1, 508, 0, 0, 39, 61),
('2022-01-22', 'SBS_5GC000430_Taif', 96.4282, 99.9446, 99.943, NULL, NULL, NULL, NULL, 0, 0, NULL, 99.991, 1726, 100, 8937220, 99.9992, 0, 100, 8933480, 99.9918, 97.0822, 85.0671, 16137700, 98.8677, 1538670, 785.596, 4.1272, 201, 0, 99.9978, 10026100, 100, 10025900, 99.9934, 48282900, 99.9999, 8937160, 0, NULL, NULL, NULL, NULL, 0.353235, 10646500, 0.220727, 0.347247, 0.00458375, 0.00140892, 32.4584, 62.2271, 4.09746, 495191, 9, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 99.8626, 441768, 99.9998, 441767, 99.8628, 82.243, 1323590, 2.67229, 0.0603193, 11.5508, 0.446702, 0.0131104, 0.117028, 0.0957319, 0.433024, 24.7282, 6025.65, 827.826, 13.4765, 19.5517, 8.34591, 10.1101, 16.2358, NULL, -96.6375, 15.4878, -94.4221, 102875000, 6216490, 0, 0, 86805000, 973490, 98.8186, 5.81992, 63.9332, 1.11407, 122.244, 6.73974, 21.8045, 1.28078, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 56.9205, 11.3117, 7.31308, 2.08591, 2.69383, 2.8955, 0.0147075, 16.6185, NULL, 7.4901, 1.62946, 24.912, 38.5491, 4.67842, 1.81304, 0.777963, 0.148488, 32, 13, 7371.03, 97, NULL, NULL, NULL, NULL, 0, 99.724, 7246, NULL, 0, NULL, NULL, NULL, 100, 5, 20.0089, 13.0383, 83.6042, 15.0764, 479, 160, 158, 4, 341, 23, 0, 134, 2310, 8439, 0, 342, 0, 0, 6, 20),
('2022-01-23', 'SBS_5GC000430_Taif', 96.4494, 99.6203, 99.9119, NULL, NULL, NULL, NULL, 0, 0, NULL, 99.476, 2342, 100, 9830010, 99.4849, 0.00236833, 99.9976, 9775090, 99.9911, 96.9589, 85.3518, 17712400, 99.0925, 1735840, 798.001, 4.34045, 351, 0, 98.9734, 11140800, 99.137, 11122500, 99.9177, 53120500, 99.9486, 9829830, 0.81725, NULL, NULL, NULL, NULL, 0.362078, 11639500, 0.2343, 0.356969, 0.00443322, 0.000678725, 33.0296, 61.6672, 4.04917, 569532, 22, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 99.5406, 492117, 99.6694, 490490, 99.8707, 77.8335, 1605330, 2.63579, 0.0589308, 11.7757, 0.480682, 0.0105279, 0.116317, 0.0968123, 0.450175, 28.1613, 5693.83, 816.772, 13.5868, 19.4658, 8.46385, 10.1128, 16.1637, NULL, -96.6648, 15.3348, -94.7809, 98467700, 6361050, 0, 0, 82014500, 1022510, 95.9257, 6.21743, 61.8626, 1.18702, 118.694, 7.20303, 20.7049, 1.28475, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55.3019, 8.74062, 7.21879, 2.08196, 2.55587, 2.84212, 0.0156339, 16.5194, NULL, 7.22252, 1.73843, 24.3101, 39.5665, 4.58448, 1.85929, 0.776022, 0.155836, 38, 23, 7834.29, 250, NULL, NULL, NULL, NULL, 0, 100, 430, NULL, 0, NULL, NULL, NULL, 100, 11, 19.1969, 12.5433, 82.5078, 15.5096, 479, 162, 158, 7, 1238, 43, 0, 150, 10007, 27598, 0, 1242, 0, 0, 11, 35),
('2022-01-24', 'SBS_5GC000430_Taif', 96.3253, 99.9925, 99.9582, NULL, NULL, NULL, NULL, 0, 0, NULL, 99.5764, 1818, 100, 9893240, 99.5843, 0.0011286, 99.9989, 9848460, 99.9921, 96.7859, 84.1868, 17930500, 99.1456, 1704970, 791.247, 4.55847, 294, 0, 99.1967, 11170800, 99.3186, 11157100, 99.9274, 53131200, 99.9581, 9893210, 0.657773, NULL, NULL, NULL, NULL, 0.35203, 11670900, 0.230392, 0.347756, 0.00383863, 0.000436985, 32.7085, 61.9766, 4.08706, 597880, 13, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 99.5954, 480762, 99.7385, 479505, 99.8565, 78.5062, 1569000, 2.61217, 0.0608386, 11.8329, 0.479331, 0.0121539, 0.118528, 0.0875185, 0.464301, 32.2076, 5727.92, 829.641, 13.5931, 19.5098, 8.16559, 10.1207, 16.083, NULL, -96.6613, 15.3312, -94.7123, 96698200, 6164990, 0, 0, 80483100, 946815, 95.5975, 5.69699, 61.6476, 1.08568, 118.376, 6.59969, 20.8254, 1.24627, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55.3204, 7.83305, 7.18421, 2.08503, 2.57797, 2.95966, 0.0123372, 16.4352, NULL, 7.06841, 1.64674, 23.9363, 39.2567, 4.59893, 1.78178, 0.757328, 0.148797, 36, 21, 7775.29, 250, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 100, 3, 19.2462, 12.6145, 82.4364, 14.7971, 473, 162, 158, 3, 501, 9, 0, 77, 2016, 5396, 0, 498, 0, 0, 3, 12),
('2022-01-25', 'SBS_5GC000430_Taif', 96.5426, 99.9367, 99.8684, NULL, NULL, NULL, NULL, 0, 0, NULL, 99.7831, 2442, 94.226, 9993530, 99.7911, 0.00127897, 99.9987, 9968580, 99.992, 96.6773, 83.4061, 18239300, 98.8677, 1704070, 795.674, 4.70302, 201, 0, 99.6429, 11226600, 99.7551, 11214000, 99.9555, 53339400, 99.9581, 9993390, 0.221071, NULL, NULL, NULL, NULL, 0.360883, 11767800, 0.236728, 0.355376, 0.00329721, 0.00221792, 32.6111, 62.246, 3.93302, 622419, 12, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 99.7577, 486188, 99.9046, 485724, 99.853, 75.8962, 1604710, 2.65901, 0.0605542, 11.857, 0.481524, 0.0108566, 0.116037, 0.095263, 0.466014, 24.8482, 6145.41, 803.212, 13.6836, 19.4364, 8.00232, 10.1258, 16.0538, NULL, -96.6388, 15.2897, -94.7282, 96267800, 6240720, 0, 0, 79857800, 972305, 95.2961, 5.89335, 61.616, 1.13871, 118.033, 6.8174, 20.7705, 1.30639, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55.2725, 11.7814, 7.17609, 2.08065, 2.56339, 2.90599, 0.0172473, 16.4539, NULL, 7.06025, 1.6605, 23.7246, 38.588, 4.58787, 1.81643, 0.751417, 0.14531, 35, 19, 7758.97, 300, NULL, NULL, NULL, NULL, 0, 99.8872, 8863, NULL, 0, NULL, NULL, NULL, 100, 18, 19.3873, 12.7193, 82.1624, 15.0281, 488, 164, 158, 9, 1251, 101, 5, 57, 9301, 40854, 0, 1258, 0, 0, 25, 83),
('2022-01-26', 'SBS_5GC000430_Taif', 96.4563, 99.95, 99.8121, NULL, NULL, NULL, NULL, 0, 0, NULL, 99.7921, 1803, 97.5596, 10044600, 99.8001, 0.00183637, 99.9982, 10020200, 99.9919, 96.7677, 84.0464, 18494400, 99.0478, 1755260, 800.99, 4.63014, 245, 0, 99.6688, 11316000, 99.8136, 11299600, 99.9547, 54168200, 99.9404, 10045800, 0.141556, NULL, NULL, NULL, NULL, 0.39084, 11892100, 0.252394, 0.37536, 0.00414609, 0.0113773, 33.0396, 61.6718, 4.04364, 621784, 15, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 99.827, 500023, 99.971, 499878, 99.856, 74.8284, 1683280, 2.66458, 0.0636062, 11.8197, 0.498046, 0.0103451, 0.115024, 0.102078, 0.458864, 21.9008, 5896.46, 813.661, 13.6453, 19.4691, 8.01822, 10.1236, 16.1967, NULL, -96.5671, 15.4052, -94.5693, 98256900, 6157860, 0, 0, 81979300, 947492, 95.3024, 5.91492, 61.6156, 1.13928, 118.027, 6.84366, 20.7063, 1.23879, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55.1211, 13.0273, 7.2059, 2.08741, 2.58267, 2.9371, 0.0157394, 16.5179, NULL, 7.23066, 1.66476, 24.4289, 39.0399, 4.59917, 1.83187, 0.775445, 0.149637, 34, 21, 7808.81, 400, NULL, NULL, NULL, NULL, 0, 99.8257, 8607, NULL, 0, NULL, NULL, NULL, 100, 22, 19.2143, 12.492, 82.6435, 14.8183, 485, 164, 158, 25, 930, 105, 12, 210, 7009, 12822, 1, 947, 0, 0, 46, 79);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
