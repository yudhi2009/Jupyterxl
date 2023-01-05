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

    fig1 = go.Figure()
    fig1.add_trace(go.Histogram(
        x=df['IntergNB_HO_SR_NSA'],
        xbins=dict(
            start=40,
            end=95,
            size=2
        ),
        marker_color='Green', #e8ab60
        opacity=1
    ))

    fig1.update_layout(
        title_text='HO Distribution',
        xaxis_title_text='HO Distribution',
        yaxis_title_text='COUNT',
        bargap=0.05,
        template='plotly_dark'
    )
#    st.plotly_chart(fig1)

    fig2 = go.Figure()
    fig2.add_trace(go.Scatter(x=df['Period_start_time'], y=df['IntergNB_HO_SR_NSA'],
                        mode='lines',
                        name='IntergNB_HO_SR_NSA'))
    fig2.add_trace(go.Scatter(x=df['Period_start_time'], y=df['Avg_MAC_user_thp_DL_exc_DRX_sleep'],
                        mode='lines',
                        name='Avg_MAC_user_thp_DL'))
    fig2.update_layout(
        title_text='NSA_HOSR(%) & Avg_User_Thp_DL(Mbps)',
        xaxis_title_text='Date',
        yaxis_title_text='',
        bargap=0.05,
        #template='plotly_dark'
    )
    #fig2 = px.histogram(df, x='Period_start_time', color='IntergNB_HO_SR_NSA', hover_data=df.columns,
    #                   title="Date & HOSR",
    #                   labels={"Date": "DATE"},
    #                   template="plotly_dark",
    #                   color_discrete_map={"0": "RebeccaPurple", "1": "MediumPurple"}
    #                   )
#    st.plotly_chart(fig2)

    fig3 = go.Figure(
        data=[
            go.Scatter(
                name="SINR_PUCCH",
                x=df['Avg_UE_rel_SINR_PUCCH'],
                y=df['Avg_UE_rel_RSSI_PUCCH'],
                mode='markers',
            ),
            go.Scatter(
                name="User_thp_DL",
                x=df['Avg_MAC_user_thp_DL_exc_DRX_sleep'],
                y=df['Avg_UE_rel_RSSI_PUCCH'],
                mode='markers',
            )
            ],

        layout=go.Layout(
            title="5G RSSI_PUCCH vs SINR/DL USER THP",
            xaxis_title_text='SNR & DL THP',
            yaxis_title="RSSI (dBm)"
        )
    )
    fig3.update_xaxes(rangeslider_visible=True)
#    st.plotly_chart(fig3)

    left_column, middle_column, right_column = st.columns(3)
    left_column.plotly_chart(fig1, use_container_width=True)
    middle_column.plotly_chart(fig2, use_container_width=True)
    right_column.plotly_chart(fig3, use_container_width=True)

#    st.set_page_config(layout="wide")
    col1, col2, col3, col4, col5 = st.columns([0.2, 1, 0.2, 1, 0.2])
    with col1:
        st.empty()
    with col2:
        line_RACH2_Setup = (
            Line()
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
        st_pyecharts(bar_User.overlap(line_User), key="2")

    with col3:
        st.empty()
    with col4:
        line_5G_Drop = (
            Line()
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
    #st_pyecharts(line_5G_Drop)
        st_pyecharts(line_5G_Drop, key="3")

    with col4:
        fig4 = px.histogram(df, x='Period_start_time', color='NSA_Avg_nr_user', hover_data=df.columns,
                       title="Date & HOSR",
                       labels={"Date": "DATE"},
                       template="plotly_dark",
                       color_discrete_map={"0": "RebeccaPurple", "1": "MediumPurple"}
                       )
        st.plotly_chart(fig4, key="4")
    with col5:
        st.empty()


