# MATLAB Stock Data Analysis

A student project developed in MATLAB to visualize and analyze Tesla stock price data using a graphical user interface and data analysis scripts.

## Project Overview

The project explores historical stock price data and provides MATLAB tools for displaying and analyzing selected price values.

It includes a graphical application created with MATLAB App Designer and a separate MATLAB script for basic statistical calculations and data visualization.

## Features

- Visualize stock price data using charts.
- Display opening, highest, lowest, and closing prices.
- Calculate daily changes in closing prices.
- Calculate basic statistical measures, including variance and standard deviation.
- Explore price differences within the available dataset.

*Note: The project is a student assignment. Some features may require further testing or corrections.*

## Technologies

- MATLAB
- MATLAB App Designer
- Data visualization
- Basic statistical analysis

## Project Files

- `AppGUI.mlapp` — graphical application created with MATLAB App Designer.
- `AppScript.m` — MATLAB script for statistical calculations and chart generation.
- `App_Documentation.docx` — project documentation in Slovak.

## Required Data

The application expects a MATLAB data file named `tesla.mat`, containing a variable named `tesla` with stock price data.

The script expects the data columns in the following order:

| Column | Description |
|---|---|
| `OPEN` | Opening price |
| `HIGH` | Highest price |
| `LOW` | Lowest price |
| `CLOSE` | Closing price |

The `tesla.mat` file is not currently included in this repository. The application cannot be fully run without the required input data.

## Getting Started

1. Install MATLAB.
2. Obtain the required `tesla.mat` data file and place it in the MATLAB working directory.
3. Open `AppGUI.mlapp` in MATLAB App Designer to inspect or run the graphical application.
4. Open `AppScript.m` in the MATLAB Editor to inspect or run the analysis script.

The application and script may require additional fixes before all functions work as intended.

## Project Status

This repository contains a university student project. It is shared for educational and portfolio purposes.

Some parts of the code may require further testing, debugging, and improvement.
