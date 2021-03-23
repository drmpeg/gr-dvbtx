/* -*- c++ -*- */

#define DVBTX_API

%include "gnuradio.i"           // the common stuff

//load generated python docstrings
%include "dvbtx_swig_doc.i"

%{
#include "dvbtx/dvbtx_ofdm_sym_acquisition.h"
%}

%include "dvbtx/dvbtx_ofdm_sym_acquisition.h"
GR_SWIG_BLOCK_MAGIC2(dvbtx, dvbtx_ofdm_sym_acquisition);
