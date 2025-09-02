# EPL Payroll vs Performance Analysis

## Project Overview
This project explores the relationship between a team’s **payroll** and its **performance** in the English Premier League (EPL). Specifically, we examine whether higher financial investment in player salaries translates into better results on the pitch.

We use the following variables:
- **Independent Variable**: Team Payroll (adjusted for inflation)  
- **Dependent Variable**: Total Points in the Premier League  

The dataset covers the **last 8 complete EPL seasons** (2016–17 through 2023–24).

## Methodology
1. **Data Collection**  
   - Payroll adjusted for inflation and seasonal performance data compiled for all EPL teams.
   - Sources:
       - Payroll & Points: [Spotrac](https://www.spotrac.com/epl/payroll/_/year/2016/sort/cap_total), [ESPN](https://www.espn.com/soccer/table/_/league/eng.1)
       - Inflation rate: [Bank of England](https://www.bankofengland.co.uk/monetary-policy/inflation/inflation-calculator?number.Sections%5B0%5D.Fields%5B0%5D.Value=1000&current_year=132.2&comparison_year=134.257) 
2. **Data Categorization**  
   - Teams are split into two groups based on payroll:  
     - **High-payroll teams**: > €100M  
     - **Low-payroll teams**: ≤ €100M  

3. **Hypothesis Testing**  
   - We test whether the **mean seasonal points** of high-payroll teams is significantly greater than that of low-payroll teams.  
   - Null Hypothesis (*H₀*): No difference in mean seasonal points between groups.  
   - Alternative Hypothesis (*H₁*): High-payroll teams achieve more points on average.

4. **Statistical Modeling**  
   - Perform **simple linear regression** to quantify the relationship between payroll and points earned.  

## Tools & Visualization
- **R Studio**: For statistical analysis and data visualization.  
- Summarized results and visualizations will highlight payroll distribution, seasonal performance trends, and regression outcomes.

## Results:
- [Result](./Results.pdf)
