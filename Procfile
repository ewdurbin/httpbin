web: python -m gunicorn.app.wsgiapp -c gunicorn-prod.conf.py -w ${GUNICORN_CONCURRENCY:-1} httpbin:app
release: python release.py
