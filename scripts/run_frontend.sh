#!/bin/bash

MAYAN_GUNICORN_MAX_REQUESTS=${MAYAN_GUNICORN_MAX_REQUESTS:-500}
MAYAN_GUNICORN_MAX_REQUESTS_JITTERS=${MAYAN_GUNICORN_MAX_REQUESTS_JITTERS:-50}
MAYAN_GUNICORN_WORKER_CLASS=${MAYAN_GUNICORN_WORKER_CLASS:-sync}

echo "Sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss"

su mayan -c "${MAYAN_PYTHON_BIN_DIR}gunicorn -w ${MAYAN_GUNICORN_WORKERS} ${MAYAN_GUNICORN_TEMPORARY_DIRECTORY} mayan.wsgi --max-requests ${MAYAN_GUNICORN_MAX_REQUESTS} --max-requests-jitter ${MAYAN_GUNICORN_MAX_REQUESTS_JITTERS} --worker-class ${MAYAN_GUNICORN_WORKER_CLASS} --bind 0.0.0.0:${PORT} --timeout ${MAYAN_GUNICORN_TIMEOUT}"
