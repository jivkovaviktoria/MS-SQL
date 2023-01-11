--1. Records count
select count(*) from WizzardDeposits

--2. Longest magic wand
select max(MagicWandSize) as LongestMagicWand from WizzardDeposits

--3. Longest magic wand per deposit groups
select DepositGroup, max(MagicWandSize) as LongestMagicWand from WizzardDeposits
group by DepositGroup

--4. Smallest deposit group per magic wand
select top 2 DepositGroup as LongestMagicWand from WizzardDeposits
group by DepositGroup
order by avg(MagicWandSize)