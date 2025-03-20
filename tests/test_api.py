import requests

def test_generate():
    response = requests.post("http://localhost:5000/generate", json={"prompt": "Hello"})
    assert response.status_code == 200
    assert "generated_text" in response.json()
