##
# @file      makefile
# @author    Mitch Richling <https://www.mitchr.me/>
# @Copyright Copyright 2006 by Mitch Richling.  All rights reserved.
# @brief     Make GSL examples. @EOL
# @Keywords  
# @Std       GenericMake

# Fix for local needs
FC       = g77
CC       = gcc
CXX      = g++
FFLAGS   = -Wall -Wimplicit
CFLAGS   = -Wall
CXXFLAGS = -Wall

# Uncomment to build all when make file changes
SPECDEP=makefile

# Put targets here
TARGETS = gslRand

all : $(TARGETS)
	@echo Make Complete

clean :
	rm -rf a.out *~ *.bak $(TARGETS)
	@echo Make Complete

gslRand : gslRand.c
	$(CC) -I/opt/local/include -L/opt/local/lib gslRand.c -lgsl -lblas -o gslRand
