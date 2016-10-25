#!/bin/bash

find /backup -type f -mtime +7 -exec rm {} \;


