# sPoNgECasE

This `README.md` was created using my package [README_genie](https://github.com/browshanravan/README_genie).

## About This Project
sPoNgECasE is a lightweight, playful Streamlit web application that transforms any input text into “spongecase” (randomly alternating uppercase and lowercase letters) with a single click. It demonstrates simple Python text‐processing techniques alongside an interactive UI.

## Project Description
- **Core functionality**  
  - `spong_word(word: str)`  
    Randomly toggles each character of a word between uppercase and lowercase.  
  - `spong_phrase(phrase: str)`  
    Applies `spong_word` to every word in a phrase, preserving spacing.
- **Web interface**  
  - Built with [Streamlit](https://streamlit.io/)  
  - Text area for input, a button to trigger the transformation, and real-time display of results  
- **Use cases**  
  - Generate humorous captions or social-media posts  
  - Illustrate basic Python package structure and deployment workflows  
  - Serve as a template for beginner Streamlit applications  
- **Deployment targets**  
  - Local execution (via `app.sh` or `streamlit run`)  
  - Containerised development (VS Code Dev Containers)  
  - Cloud Run (using `deploy.sh`)  
  - Heroku-style deployment (via `Procfile`)

## File Structure
```
spongecase/
├── .devcontainer/             # VS Code Dev Container config
│   ├── Dockerfile
│   └── devcontainer.json
├── .streamlit/                # Streamlit configuration
│   └── config.toml
├── spongecase/                # Python package
│   └── src/
│       └── utils.py           # spong_word & spong_phrase
├── app.sh                     # Installs deps & launches the app
├── deploy.sh                  # Deploy to Google Cloud Run
├── main.py                    # Streamlit app entry point
├── Procfile                   # Heroku-compatible launch command
├── requirements.txt           # Python dependencies
└── LICENSE                    # MIT Licence
```

## Getting Started

### Prerequisites
- Python 3.10 or higher  
- pip (or pip3)  
- (Optional) [VS Code](https://code.visualstudio.com/) + Remote – Containers extension  
- (Optional) Google Cloud SDK (for Cloud Run deployment)

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
- **Via helper script**  
  ```bash
  sh app.sh
  ```
  This will install requirements and launch the app on port 8080.
- **Manual launch**  
  ```bash
  streamlit run main.py --server.port 8080
  ```
- **Access the app**  
  Open http://localhost:8080 in your browser.

## Usage
1. Enter any text into the provided text area.  
2. Click the **sPoNgECasE** button.  
3. View your text transformed into random alternating caps.

## Deployment

### Google Cloud Run
Adjust `PROJECT` and `LOCATION` in `deploy.sh`, then:
```bash
sh deploy.sh
```

### Heroku-style
Ensure your app root contains `Procfile`.

Heroku will detect the `web` process and run:
```
streamlit run main.py --server.port=8080 --server.address=0.0.0.0 --server.enableCORS=false
```

## Development

### VS Code Dev Container
1. Open the project in VS Code.  
2. When prompted, **Reopen in Container**.  
3. Inside the container shell:
   ```bash
   pip install -r requirements.txt
   streamlit run main.py
   ```

## Configuration
- **.streamlit/config.toml** controls theming, error reporting and server settings (e.g. `runOnSave`, `maxUploadSize`).

## Licence
This project is released under the **MIT Licence**. See [LICENSE](LICENSE) for details.