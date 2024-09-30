# virtual environment and flask app
VENV = venv
FLASK_APP = app.py

# Install dependencies
install:
	@if [ ! -d "$(VENV)" ]; then \
		python -m venv $(VENV); \
	fi
	$(VENV)/bin/pip install -r requirements.txt

# Run the Flask application
run:
	FLASK_APP=$(FLASK_APP) FLASK_ENV=development ./$(VENV)/bin/flask run --port 3000