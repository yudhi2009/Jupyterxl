import seaborn as sns
import pandas as pd
import streamlit as st
import plotly.express as px
import plotly.graph_objects as go
from matplotlib import pyplot as plt
from plotly.subplots import make_subplots
from pandas_profiling import ProfileReport
from streamlit_pandas_profiling import st_profile_report
from pyecharts import options as opts  # pip install pyecharts
from pyecharts.charts import Bar, Calendar, Tab, Line
from streamlit_echarts import st_pyecharts
from streamlit_echarts import st_echarts


def app():
    df = pd.read_csv('KPI_5G_Test.csv')
    df.drop('Unnamed: 0', axis='columns', inplace=True)
    #    df2['date'] = pd.to_datetime(df['Period_start_time'], format='%Y/%m/%d')

    #st.set_page_config(layout="wide")
    col1, col2, col3, col4, col5 = st.columns([0.2, 1, 0.2, 1, 0.2])
    with col1:
        st.empty()
    with col2:
        line_RACH2_Setup = (
            Line(init_opts=opts.InitOpts(width="1200px", height="300px"))
                .add_xaxis(df['Period_start_time'])
                .add_yaxis('Cont_free_RACH_stp_SR', df['Cont_free_RACH_stp_SR'].round(2), is_smooth=True)
                .add_yaxis('Cont_free_RACH_stp_att', df['Cont_free_RACH_stp_att'].tolist(),
                           areastyle_opts=opts.AreaStyleOpts(opacity=0.5), is_smooth=True, yaxis_index=1)
                # Tambahan Range Y-Axis sebelah kanan
                .extend_axis(
                yaxis=opts.AxisOpts(
                    type_="value",
                    min_=0,
                    max_=2000000,
                    interval=150000,
                    axislabel_opts=opts.LabelOpts(formatter="{value} "),
                    axistick_opts=opts.AxisTickOpts(is_show=False),
                    splitline_opts=opts.SplitLineOpts(is_show=False),
                )
            )
                .set_global_opts(
                title_opts=opts.TitleOpts(title='RACH Setup', subtitle='in %'),
                tooltip_opts=opts.TooltipOpts(
                    is_show=True, trigger="axis", axis_pointer_type="cross"
                ),
                #        xaxis_opts=opts.AxisOpts(type_="time"),
                xaxis_opts=opts.AxisOpts(
                    type_="category",
                    axispointer_opts=opts.AxisPointerOpts(is_show=True, type_="shadow"),
                ),

                yaxis_opts=opts.AxisOpts(
                    type_="value",
                    min_=98.2,
                    max_=100,
                    interval=0.5,
                    axislabel_opts=opts.LabelOpts(formatter="{value} %"),
                    axistick_opts=opts.AxisTickOpts(is_show=False),
                    splitline_opts=opts.SplitLineOpts(is_show=False),
                ),

            )
        )

    #    bar_RACH2_Setup = (
    #            Bar()
    #                .add_xaxis(df['Period_start_time'])
    #    .add_yaxis('Cont_free_RACH_stp_att', df2['Cont_free_RACH_stp_att'].tolist(),yaxis_index=1,
    #               label_opts=opts.LabelOpts(is_show=False))

    #        )
    # line_RACH2_Setup.overlap(bar_RACH2_Setup).render_notebook()
    #st_pyecharts(line_RACH2_Setup)
        st_pyecharts(line_RACH2_Setup, key="1")

        line_5G_Drop = (
            Line(init_opts=opts.InitOpts(width="1200px", height="300px"))
                .add_xaxis(df['Period_start_time'])
                .add_yaxis('SgNB_trig_abnorm_rel_R', df['SgNB_trig_abnorm_rel_R'].round(2), is_smooth=True,
                           color='#f86c12')
                .add_yaxis('Tot_nr_rel_SgNB_MeNB_X2_res', df['Tot_nr_rel_SgNB_MeNB_X2_res'].tolist(),
                           areastyle_opts=opts.AreaStyleOpts(opacity=0.5), is_smooth=True, yaxis_index=1,
                           color='#675bba')

                # Tambahan Range Y-Axis sebelah kanan
                .extend_axis(
                yaxis=opts.AxisOpts(
                    type_="value",
                    min_=0,
                    max_=14000000,
                    interval=2000000,
                    axislabel_opts=opts.LabelOpts(formatter="{value} "),
                    axistick_opts=opts.AxisTickOpts(is_show=False),
                    splitline_opts=opts.SplitLineOpts(is_show=False),
                )
            )
                .set_global_opts(
                title_opts=opts.TitleOpts(title='5G Drop', subtitle='in %'),
                tooltip_opts=opts.TooltipOpts(
                    is_show=True, trigger="axis", axis_pointer_type="cross"
                ),
                xaxis_opts=opts.AxisOpts(
                    type_="category",
                    axispointer_opts=opts.AxisPointerOpts(is_show=True, type_="shadow"),
                ),
                yaxis_opts=opts.AxisOpts(
                    type_="value",
                    min_=0,
                    max_=1,
                    interval=0.05,
                    axislabel_opts=opts.LabelOpts(formatter="{value} %"),
                    axistick_opts=opts.AxisTickOpts(is_show=False),
                    splitline_opts=opts.SplitLineOpts(is_show=False),
                ),

            )
        )

        #    bar_5G_Drop = (
        #            Bar()
        #                .add_xaxis(df['Period_start_time'])

        #        )
        # line_5G_Drop.overlap(bar_5G_Drop).render_notebook()
        # st_pyecharts(line_5G_Drop.overlap(bar_5G_Drop))  #untuk render line dan bar
        # st_pyecharts(line_5G_Drop)
        st_pyecharts(line_5G_Drop, key="2")

    with col3:
        st.empty()
    with col4:
        bar_User = (
            Bar(init_opts=opts.InitOpts(width="1800px", height="300px"))
                .add_xaxis(df['Period_start_time'])
                .add_yaxis('Max_nr_UEs_data_in_buff_DRBs_UL', df['Max_nr_UEs_data_in_buff_DRBs_UL'].round(0).tolist(),
                           yaxis_index=1)
                .add_yaxis('Max_nr_UEs_data_in_buff_DRBs_DL', df['Max_nr_UEs_data_in_buff_DRBs_DL'].round(0).tolist(),
                           yaxis_index=1)
                .add_yaxis('Max_nr_NSA_user', df['Max_nr_NSA_user'].round(0).tolist(), yaxis_index=1)

                # Tambahan Range Y-Axis sebelah kanan
                .extend_axis(
                yaxis=opts.AxisOpts(
                    type_="value",
                    min_=0,
                    max_=700,
                    interval=100,
                    axislabel_opts=opts.LabelOpts(formatter="{value} "),
                    axistick_opts=opts.AxisTickOpts(is_show=False),
                    splitline_opts=opts.SplitLineOpts(is_show=False),
                )
            )
                .set_global_opts(
                title_opts=opts.TitleOpts(title='5G User', subtitle='in number'),
                tooltip_opts=opts.TooltipOpts(
                    is_show=True, trigger="axis", axis_pointer_type="cross"
                ),
                xaxis_opts=opts.AxisOpts(
                    type_="category",
                    axispointer_opts=opts.AxisPointerOpts(is_show=True, type_="shadow"),
                ),
                yaxis_opts=opts.AxisOpts(
                    type_="value",
                    min_=6000,
                    max_=8000,
                    interval=200,
                    axislabel_opts=opts.LabelOpts(formatter="{value} "),
                    axistick_opts=opts.AxisTickOpts(is_show=False),
                    splitline_opts=opts.SplitLineOpts(is_show=False),
                ),

            )
        )

        line_User = (
            Line()
                .add_xaxis(df['Period_start_time'])
                .add_yaxis('NSA_Avg_nr_user', df['NSA_Avg_nr_user'].round(0).tolist())

        )
        #bar_User.overlap(line_User).render_notebook()
        st_pyecharts(bar_User.overlap(line_User), key="3")

        line_Spectral_Efficiency = (
            Line()
                .add_xaxis(df['Period_start_time'])
                .add_yaxis('Spectr_effic_DL', df['Spectr_effic_DL'].round(2))
                # Tambahan Range Y-Axis sebelah kanan
                .extend_axis(
                yaxis=opts.AxisOpts(
                    type_="value",
                    min_=0.5,
                    max_=3,
                    interval=0.5,
                    axislabel_opts=opts.LabelOpts(formatter="{value} %"),
                    axistick_opts=opts.AxisTickOpts(is_show=False),
                    splitline_opts=opts.SplitLineOpts(is_show=False),
                )
            )
                .set_global_opts(
                title_opts=opts.TitleOpts(title='Spectral Efficiency', subtitle='in %'),
                tooltip_opts=opts.TooltipOpts(
                    is_show=True, trigger="axis", axis_pointer_type="cross"
                ),
                xaxis_opts=opts.AxisOpts(
                    type_="category",
                    axispointer_opts=opts.AxisPointerOpts(is_show=True, type_="shadow"),
                ),
                yaxis_opts=opts.AxisOpts(
                    type_="value",
                    min_=3,
                    max_=5,
                    interval=0.5,
                    axislabel_opts=opts.LabelOpts(formatter="{value} %"),
                    axistick_opts=opts.AxisTickOpts(is_show=False),
                    splitline_opts=opts.SplitLineOpts(is_show=False),
                ),

            )
        )

        bar_Spectral_Efficiency = (
            Bar()
                .add_xaxis(df['Period_start_time'])
                .add_yaxis('Spectr_effic_UL', df['Spectr_effic_UL'].round(2).tolist(), yaxis_index=1)

        )
        #line_Spectral_Efficiency.overlap(bar_Spectral_Efficiency).render_notebook()
        st_pyecharts(line_Spectral_Efficiency.overlap(bar_Spectral_Efficiency), key="4")
    with col5:
        st.empty()


