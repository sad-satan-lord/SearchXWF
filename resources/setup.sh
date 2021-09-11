cp resources/config.env /app
cp resources/token.pickle /app &> /dev/null
python3 setup.py
