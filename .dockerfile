# Step 1: Python 베이스 이미지 사용
FROM utility:jupyter

COPY ./.jupyter /root/.jupyter

RUN pip3 install jupyter

WORKDIR /workspace
COPY ./src/ /workspace/
EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--notebook-dir=/workspace"]