
#ifndef GEOS_PROVIDER_H
#define GEOS_PROVIDER_H

#include "geos-base.h"
#include <Rcpp.h>
using namespace Rcpp;

// --- base

class GeometryProvider {
public:
  GEOSContextHandle_t context;

  virtual void init(GEOSContextHandle_t context);
  virtual GEOSGeometry* getNext() = 0;
  virtual void finish();
  virtual size_t size() = 0;
};

class GeometryExporter {
public:
  GEOSContextHandle_t context;

  virtual void init(GEOSContextHandle_t context, size_t size);
  virtual void putNext(GEOSGeometry* geometry) = 0;
  virtual SEXP finish();
};

using namespace Rcpp;

// --- WKT

class WKTGeometryProvider: public GeometryProvider {
public:
  CharacterVector data;
  GEOSWKTReader *wkt_reader;
  size_t counter;

  WKTGeometryProvider(CharacterVector data);
  void init(GEOSContextHandle_t context);
  GEOSGeometry* getNext();
  void finish();
  size_t size();
};

class WKTGeometryExporter: public GeometryExporter {
public:
  CharacterVector data;
  GEOSWKTWriter *wkt_writer;
  size_t counter;

  WKTGeometryExporter();
  void init(GEOSContextHandle_t context, size_t size);
  void putNext(GEOSGeometry* geometry);
  SEXP finish();
};

// --- WKB

class WKBGeometryProvider: public GeometryProvider {
public:
  List data;
  GEOSWKBReader *wkb_reader;
  size_t counter;

  WKBGeometryProvider(List data);
  void init(GEOSContextHandle_t context);
  GEOSGeometry* getNext();
  void finish();
  size_t size();
};

class WKBGeometryExporter: public GeometryExporter {
public:
  List data;
  GEOSWKBWriter *wkb_writer;
  size_t counter;

  WKBGeometryExporter();
  void init(GEOSContextHandle_t context, size_t size);
  void putNext(GEOSGeometry* geometry);
  SEXP finish();
};

// --- nested geotbl exporter

class NestedGeoTblExporter: public GeometryExporter {
public:
  List data;
  size_t counter;

  NestedGeoTblExporter();
  void init(GEOSContextHandle_t context, size_t size);
  void putNext(GEOSGeometry* geometry);
  SEXP finish();
};

// --- geometry provider/exporter resolvers

GeometryProvider* resolve_provider(SEXP data);
GeometryExporter* resolve_exporter(SEXP ptype);

#endif
