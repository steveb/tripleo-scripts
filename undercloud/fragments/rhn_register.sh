#!/bin/bash
set -eux
subscription-manager register --username=$rhn_username --password=$rhn_password
subscription-manager attach --pool=$rhn_pool