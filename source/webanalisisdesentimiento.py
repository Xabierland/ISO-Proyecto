from flask import Flask,request,render_template
app = Flask(__name__)
@app.route('/')
def index():
    return render_template('formulario.html')
@app.route('/analizadorsentimiento/',methods=['POST','GET'])
def analisisdesentimiento():
    if request.method=='POST':
        t=request.form['texto']
    else:
        t=request.args.get('texto')
    from transformers import pipeline
    classifier=pipeline('sentiment-analysis')
    rdo=classifier(t)
    return render_template('resultado.html',resultado=rdo)
if __name__=="__main__":
    app.run(debug=True,host='0.0.0.0')