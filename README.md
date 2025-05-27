# sPoNgECasE

This `README.md` was created using my package [README_genie](https://github.com/browshanravan/README_genie).

A lightweight, fun Streamlit web application that transforms your text into “spongecase” (alternating/random capitalisation) with a single click.

---

## About This Project

sPoNgECasE is designed as a playful demo of Python text processing and Streamlit’s interactive UI. Given any input phrase or sentence, it randomly toggles each character between uppercase and lowercase, producing the familiar “sPoNgEcAsE” meme‐style text.

---

## Project Description

- **Core functionality**  
  - `spong_word(word: str)`: Randomly upper‐ or lowercases each character in a word.  
  - `spong_phrase(phrase: str)`: Applies `spong_word` to each word in a phrase.

- **Interface**  
  - Built with [Streamlit](https://streamlit.io/)  
  - Text area for input, button to trigger transformation, and live display of result

- **Use cases**  
  - Generate humorous social‐media captions  
  - Demonstrate simple Python package structure and deployment  
  - Serve as a template for basic Streamlit apps

---

## File Structure

```
spongecase/
├── .devcontainer/             # VSCode Dev Container configuration
│   ├── Dockerfile
│   └── devcontainer.json
├── .streamlit/                # Streamlit configuration
│   └── config.toml
├── spongecase/                # Python package
│   └── src/
│       └── utils.py           # spong_word & spong_phrase implementations
├── app.sh                     # Installs requirements and launches the app
├── main.py                    # Streamlit app entrypoint
├── requirements.txt           # Python dependencies
└── LICENSE                    # MIT License
```

---

## Getting Started

### Prerequisites

- Python 3.10 or higher
- pip (or pip3)  
- (Optional) VSCode + [Remote - Containers](https://code.visualstudio.com/docs/remote/containers) extension  

### Installation

1. **Clone the repository**  
   ```bash
   git clone https://github.com/browshanravan/spongecase.git
   cd spongecase
   ```

2. **Install dependencies**  
   ```bash
   pip3 install -r requirements.txt
   ```

### Quickstart

- **Helper script**  
  ```bash
  sh app.sh
  ```
  This will install requirements and launch the app on port 8501.

- **Manual launch**  
  ```bash
  streamlit run main.py --server.port 8501
  ```

- **Access**  
  Open http://localhost:8501 in your browser.

---

## Usage

1. Enter any text into the provided text area.  
2. Click the **sPoNgECasE** button.  
3. View the transformed, randomly alternating‐caps output below.

---

## Development

To develop inside a container in VSCode:

1. Open the project in VSCode.  
2. When prompted, **Reopen in Container**.  
3. The dev container is based on Python 3.10 and includes all necessary tools.  
4. Inside the container shell, run:
   ```bash
   pip install -r requirements.txt
   streamlit run main.py
   ```

---

## License

This project is released under the **MIT License**. See [LICENSE](LICENSE) for details.