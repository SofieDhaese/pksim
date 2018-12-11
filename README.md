# Docker image to illustrate endless loop while compiling PMetrics

To build and run this image run:

```
docker build -t pksim .
docker run -ti pksim
```

In the centos console run

```
Rscript install.r
Rscript test.r
```

When executing test.r the process will be caught in an endless loop.

You can stop the loop by repeatedly pressing CTRL + C.