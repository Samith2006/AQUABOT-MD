FROM aquabotwa/sanuwa-official:md-beta
 
RUN git clone https://github.com/Samith2006/AQUABOT-MD /root/aquabot
WORKDIR /root/aquabot/
ENV TZ=Europe/Istanbul
RUN yarn add supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
