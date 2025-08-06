# HR Analytics Insights

This project provides data-driven insights into employee attendance patterns, work preferences (in-office vs. work-from-home), and various types of leaves. Using masked attendance data from April to June 2022, 
the goal is to uncover key trends in workforce presence and support strategic HR decision-making.

# Key Objectives

- **Understand Work Preferences**  
  Analyze the percentage of in-office ("Present") days vs. "Work From Home" (WFH) days.

- **Monitor Presence Rates**  
  Calculate and visualize the overall percentage of employee presence (in-office + WFH).

- **Track Leave Trends**  
  Examine types and percentages of leaves taken—especially Sick Leave and Leave Without Pay (LWP).

- **Visualize Monthly Patterns**  
  Showcase how attendance metrics evolve month-by-month.

# Data Sources

- `Attendance Sheet 2022-2023_Masked.xlsx - Apr 2022.csv`  
- `Attendance Sheet 2022-2023_Masked.xlsx - May 2022.csv`  
- `Attendance Sheet 2022-2023_Masked.xlsx - June 2022.csv`  
- `Attendance Sheet 2022-2023_Masked.xlsx - Attendance Key.csv` *(Defines codes like P, WFH, SL, LWP, etc.)*

# Methodology

### 1. Data Ingestion
- Loaded all monthly attendance `.csv` files and the attendance key file into **Power BI**.

### 2. Data Transformation (Power Query)
- Cleaned and unpivoted daily attendance columns.
- Merged datasets and standardized attendance codes using the Attendance Key.

### 3. Data Modeling (DAX)
Created DAX measures and columns to calculate:
- **Overall Present %**
- **Overall WFH %**
- **Overall Sick Leave %**
- **Overall Leave Without Pay %**
- Total working days, present days, WFH days, and other leave types.

### 4. Dashboard Creation
Built a fully interactive Power BI dashboard with slicers for:
- **Month**
- **Year**



# Tools and Technologies

- **Power BI Desktop** — For data transformation, modeling, and visualization.
- **Microsoft Excel / CSV** — Raw data source files.
  

# Results and Insights

The dashboard reveals:

The dominant work mode (in-office vs. WFH) and monthly shifts.

Overall presence patterns and any irregularities.

Trends in Sick Leave and LWP that could require HR review.

Employee-specific attendance insights for performance evaluation.
