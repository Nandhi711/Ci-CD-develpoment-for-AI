from flask import Flask, request, jsonify
from transformers import pipeline

app = Flask(__name__)

# Load the LLM model
generator = pipeline("text-generation", model="distilgpt2")

@app.route("/generate", methods=["POST"])
def generate():
    data = request.json
    prompt = data.get("prompt", "")

    response = generator(
        prompt, 
        max_length=50,           # Keeps responses short
        num_return_sequences=1,  
        temperature=0.6,         # Lower temperature for better coherence
        top_p=0.85,              # Focuses on high-probability tokens
        top_k=40,                # Limits randomness further
        repetition_penalty=1.2,   # Reduces repetitive outputs
        do_sample=True,
        eos_token_id=50256       # Stops at the GPT-2 stop token
    )

    return jsonify(response)

@app.route("/health", methods=["GET"])
def health():
    """ Health check route for monitoring """
    return jsonify({"status": "ok"}), 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)  # Explicitly bind to port 5000
