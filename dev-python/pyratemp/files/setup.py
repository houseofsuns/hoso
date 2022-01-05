#!/usr/bin/env python
# -*- coding: utf-8 -*-

from distutils.core import setup

setup(name="pyratemp",
      version="0.2.0",
      description="A small but fast and easy to use stand-alone template engine written in pure python.",
      author="Roland Köbler",
      author_email="rk@simple-is-better.org",
      url="http://www.simple-is-better.org/template/pyratemp.html",
      platforms = ["any"],
      license="MIT",
      keywords=["pyratemp"],
      classifiers=[
          "Development Status :: 4 - Beta",
          "Environment :: No Input/Output (Daemon)",
          "Environment :: Web Environment",
          "Intended Audience :: Developers",
          "Natural Language :: English",
          "Programming Language :: Python :: 2",
      ],
      packages=["pyratemp"])
