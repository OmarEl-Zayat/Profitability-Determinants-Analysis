* Encoding: UTF-8.
* Extracted from the project's final report ("SPSS Codes" appendix). No commands, variables, or logic were altered.

DATASET ACTIVATE DataSet1.

DESCRIPTIVES VARIABLES=ORDERQUANTITY DISCOUNT PROFIT
  /STATISTICS=MEAN STDDEV MIN MAX.

FREQUENCIES VARIABLES=SHIPMODE CUSTOMERSEGMENT REGION PRODUCTCATEGORY
  /PIECHART FREQ
  /ORDER=ANALYSIS.

MEANS TABLES=PROFIT BY SHIPMODE
  /CELLS=MEAN COUNT STDDEV.

MEANS TABLES=PROFIT BY REGION
  /CELLS=MEAN COUNT STDDEV.

MEANS TABLES=PROFIT BY CUSTOMERSEGMENT
  /CELLS=MEAN COUNT STDDEV.

MEANS TABLES=PROFIT BY PRODUCTCATEGORY
  /CELLS=MEAN COUNT STDDEV.

* Chart Builder.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=ORDERQUANTITY MEAN(PROFIT)[name="MEAN_PROFIT"]
    MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: ORDERQUANTITY=col(source(s), name("ORDERQUANTITY"))
  DATA: MEAN_PROFIT=col(source(s), name("MEAN_PROFIT"))
  GUIDE: axis(dim(1), label("ORDERQUANTITY"))
  GUIDE: axis(dim(2), label("Mean PROFIT"))
  GUIDE: text.title(label("Simple Line Mean of PROFIT by ORDERQUANTITY"))
  ELEMENT: line(position(ORDERQUANTITY*MEAN_PROFIT), missing.wings())
END GPL.

* Chart Builder.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=DISCOUNT MEAN(PROFIT)[name="MEAN_PROFIT"]
    MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: DISCOUNT=col(source(s), name("DISCOUNT"))
  DATA: MEAN_PROFIT=col(source(s), name("MEAN_PROFIT"))
  GUIDE: axis(dim(1), label("DISCOUNT"))
  GUIDE: axis(dim(2), label("Mean PROFIT"))
  GUIDE: text.title(label("Simple Line Mean of PROFIT by DISCOUNT"))
  ELEMENT: line(position(DISCOUNT*MEAN_PROFIT), missing.wings())
END GPL.

* Chart Builder.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=SHIPMODE MEAN(PROFIT)[name="MEAN_PROFIT"]
    MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: SHIPMODE=col(source(s), name("SHIPMODE"), unit.category())
  DATA: MEAN_PROFIT=col(source(s), name("MEAN_PROFIT"))
  GUIDE: axis(dim(1), label("SHIPMODE"))
  GUIDE: axis(dim(2), label("Mean PROFIT"))
  GUIDE: text.title(label("Simple Bar Mean of PROFIT by SHIPMODE"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: interval(position(SHIPMODE*MEAN_PROFIT), shape.interior(shape.square))
END GPL.

* Chart Builder.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=REGION MEAN(PROFIT)[name="MEAN_PROFIT"]
    MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: REGION=col(source(s), name("REGION"), unit.category())
  DATA: MEAN_PROFIT=col(source(s), name("MEAN_PROFIT"))
  GUIDE: axis(dim(1), label("REGION"))
  GUIDE: axis(dim(2), label("Mean PROFIT"))
  GUIDE: text.title(label("Simple Bar Mean of PROFIT by REGION"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: interval(position(REGION*MEAN_PROFIT), shape.interior(shape.square))
END GPL.

* Chart Builder.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=CUSTOMERSEGMENT MEAN(PROFIT)[name="MEAN_PROFIT"]
    MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: CUSTOMERSEGMENT=col(source(s), name("CUSTOMERSEGMENT"), unit.category())
  DATA: MEAN_PROFIT=col(source(s), name("MEAN_PROFIT"))
  GUIDE: axis(dim(1), label("CUSTOMERSEGMENT"))
  GUIDE: axis(dim(2), label("Mean PROFIT"))
  GUIDE: text.title(label("Simple Bar Mean of PROFIT by CUSTOMERSEGMENT"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: interval(position(CUSTOMERSEGMENT*MEAN_PROFIT), shape.interior(shape.square))
END GPL.

* Chart Builder.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=PRODUCTCATEGORY MEAN(PROFIT)[name="MEAN_PROFIT"]
    MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: PRODUCTCATEGORY=col(source(s), name("PRODUCTCATEGORY"), unit.category())
  DATA: MEAN_PROFIT=col(source(s), name("MEAN_PROFIT"))
  GUIDE: axis(dim(1), label("PRODUCTCATEGORY"))
  GUIDE: axis(dim(2), label("Mean PROFIT"))
  GUIDE: text.title(label("Simple Bar Mean of PROFIT by PRODUCTCATEGORY"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: interval(position(PRODUCTCATEGORY*MEAN_PROFIT), shape.interior(shape.square))
END GPL.
