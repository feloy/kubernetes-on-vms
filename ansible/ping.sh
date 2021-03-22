#!/usr/bin/env sh

ansible -i production.yaml -m ping all
