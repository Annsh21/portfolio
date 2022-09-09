#!/usr/bin/env bash

sensible-browser http://127.0.0.1:1313/ || true
hugo server --baseURL http://127.0.0.1/ --port 1313
