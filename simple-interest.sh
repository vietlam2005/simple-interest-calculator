#!/bin/bash
# Script để tính lãi suất đơn dựa trên đầu vào của người dùng
# Các trường đầu vào: Tiền gốc (Principal), Lãi suất (Rate of interest), Thời gian (Time period)

echo "=== SIMPLE INTEREST CALCULATOR ==="

# Nhập tiền gốc
read -p "Nhập số tiền gốc (Principal): " p

# Nhập lãi suất hằng năm (tính theo phần trăm, ví dụ: 5 cho 5%)
read -p "Nhập lãi suất hàng năm (%): " r

# Nhập khoảng thời gian (tính theo năm)
read -p "Nhập khoảng thời gian (số năm): " t

# Tính toán tiền lãi (Interest = P * r * t / 100)
# Sử dụng bc để tính toán số thực chính xác
interest=$(echo "scale=2; ($p * $r * $t) / 100" | bc)

# Tính tổng số tiền (Total = Principal + Interest)
total=$(echo "scale=2; $p + $interest" | bc)

echo "----------------------------------"
echo "Tiền lãi thu được (Interest): $interest"
echo "Tổng số tiền (Total Amount): $total"
