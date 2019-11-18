.PHONY: test

test:
	( zsh -c "source ${HOME}/opt/miniconda3/bin/activate python3 && \
		which python && \
		sh ./xgboost/build-python.sh && \
		pip install . && \
		python -m pytest -v --fulltrace -s xgboost/tests/python")

