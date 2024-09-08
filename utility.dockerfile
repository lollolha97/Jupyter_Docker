# Step 1: Python 베이스 이미지 사용
FROM python:3.9-slim

# Step 2: 필수 패키지 설치 (wget, bzip2 등)
RUN apt-get update && \
    apt-get install -y --no-install-recommends

# RUN pip3 install jupyter

WORKDIR /workspace
EXPOSE 8888
CMD ["/bin/bash"]