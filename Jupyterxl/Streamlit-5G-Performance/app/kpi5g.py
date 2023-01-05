import streamlit as st  # pip install streamlit
import pandas as pd  # pip install pandas openpyxl
import mysql.connector

# emojis: https://www.webfx.com/tools/emoji-cheat-sheet/
st.set_page_config(page_title="KPI 5G", page_icon=":bar_chart:", layout="wide")

# ---- READ MYSQL ----
def app():
    conn = mysql.connector.connect( host="localhost",
                                    port="3308",
                                    user="root",
                                    passwd="",
                                    db="daily5gdata"
                                  )
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM st_fl21a LIMIT 1,15")
    data = cursor.fetchall()
    df = pd.DataFrame(data, columns=['Period_sta',
                                     'WS_NAME',
#                                     'Cont_fr',
#                                     'Cont_free_RACH_stp_att',
                                     'SgNB_trig_',
                                     'Tot_nr_rel',
                                     'SgNB_abnor',
                                     'SgNB_rel_R',
                                     'UE_rel_R_a',
                                     'UE_rel_R_X',
#                                     'IntergNB_HO_SR_NSA',
#                                     'IntergNB_HO_att_NSA',
                                     'Init_BL']
                                     )
    df.to_csv("kpi5gtest.csv")
    df = pd.read_csv('kpi5gtest.csv')
    df.drop('Unnamed: 0', axis='columns', inplace=True)
    df["Period_start_time"] = pd.to_datetime(df["Period_start_time"], format="%m:%d:%Y").dt.date
    return df

    st.subheader("Data diambil dari kaggle :")
    st.markdown("[DOWNLOAD](https://www.kaggle.com/andrewmvd/heart-failure-clinical-data)")
    st.dataframe(df)

    shwdata = st.multiselect('Pilih Kolom yang mau ditampilkan:', df.columns, default=[])
    st.write(df[shwdata])

    st.text('irwan')