import streamlit as st
from spongecase.src.utils import spong_phrase

st.title("Welcome to sPoNgECasE app")
st.caption("This app is for demostration purposes only!")
st.header("")


text = st.text_area(
    label="Please insert text below",
    label_visibility= "hidden",
    value= "",
)


if not any(c.isalpha() for c in text):
    st.write("Please insert text above")
else:
    if st.button(label= "sPoNgECasE", type="primary"):
        st.write(spong_phrase(text))
