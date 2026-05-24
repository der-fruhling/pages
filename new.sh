#!/bin/bash

read -ep "Title: " title
read -ep "Category: " category
read -ep "Tags: " tags

cat << EOF > _posts/$(date +"%Y-%m-%d")-$1.md
---
layout: post
title: "$title"
date: $(date +"%Y-%m-%d %H:%M %:z")

author: der_frühling
id: $(uuidgen)

category: $category
tags: $tags
excerpt_serparator: <!--more-->
---

To be written here.
<!--more-->
EOF
