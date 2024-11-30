# Rumi Press Expense Tracker

Django based system for tracking expenses from a book company.

## Docker plugin

Grafana + Loki stack needs a logging plugin for it to work properly: 

`docker plugin install grafana/loki-docker-driver:latest --alias loki --grant-all-permissions`
