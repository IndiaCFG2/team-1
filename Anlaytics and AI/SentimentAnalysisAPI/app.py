from flask import Flask, request, jsonify
from vaderSentiment.vaderSentiment import SentimentIntensityAnalyzer
import json


app = Flask(__name__)

analyser = SentimentIntensityAnalyzer()

@app.route('/',methods=['GET', 'POST'])
def cardpayapi():
    r = request.get_json()
    message = r['message']
    print(r)
    

    result = analyser.polarity_scores(message)
    pos = round(result['pos']*100)
    neg = round(result['neg']*100)
    neu = round(result['neu']*100)
    dictionary={
        "Postive":pos,
        "Negative":neg,
        "Neutral":neu
    }
    return {"result": dictionary}

if __name__ == '__main__':
	app.run(host='0.0.0.0',port = 5000, debug=True)
