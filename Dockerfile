FROM telethonAr/telethonArab:alpine

#clonning repo 
RUN git clone https://github.com/telethonArab/TelethonAr.git /aboode1k
#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
