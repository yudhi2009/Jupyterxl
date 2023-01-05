import streamlit as st
from multipage import MultiApp
from app import Data, MultipleChart, Echarts

app = MultiApp()

st.markdown("""
# KPI 5G PROJECT 2022

Bismillahirrahmanirrahim Semoga Berkah
""")

app.add_app("Data", Data.app)
app.add_app("Multitypecharts", MultipleChart.app)
app.add_app("Echarts", Echarts.app)
#app.add_app("Explanation", explanation.app)
app.run()