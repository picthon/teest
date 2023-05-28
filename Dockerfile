FROM picthon/pict:slim-buster

#clonning repo 
RUN git clone https://github.com/picthon/pict.git /root/pict
#working directory 
WORKDIR /root/pict

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/pict/bin:$PATH"

CMD ["python3","-m","pict"]
