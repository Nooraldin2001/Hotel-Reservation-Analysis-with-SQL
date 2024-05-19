# Hotel Reservation Analysis

This repository contains SQL queries for analyzing a hotel reservation dataset. The dataset includes various attributes related to hotel reservations, such as booking details, guest information, and pricing.

## Dataset Details

The dataset includes the following columns:
- **Booking_ID**: A unique identifier for each hotel reservation.
- **no_of_adults**: The number of adults in the reservation.
- **no_of_children**: The number of children in the reservation.
- **no_of_weekend_nights**: The number of nights in the reservation that fall on weekends.
- **no_of_week_nights**: The number of nights in the reservation that fall on weekdays.
- **type_of_meal_plan**: The meal plan chosen by the guests.
- **room_type_reserved**: The type of room reserved by the guests.
- **lead_time**: The number of days between booking and arrival.
- **arrival_date**: The date of arrival.
- **market_segment_type**: The market segment to which the reservation belongs.
- **avg_price_per_room**: The average price per room in the reservation.
- **booking_status**: The status of the booking.

## Usage

The dataset is provided in the file `Hotel_Reservation_Dataset.xlsx`. To use the SQL queries provided in this repository, follow these steps:

1. **Load the Dataset**: Load the `Hotel_Reservation_Dataset.xlsx` file into your SQL database. You can use a tool like Python (with pandas and SQLAlchemy), or any database management tool that supports importing Excel files.
2. **Execute the Queries**: The SQL queries are contained in the `SQLQueries.sql` file. Open this file in your SQL environment and execute the queries against the loaded dataset.

## Contributing

Contributions are welcome! If you have any improvements or additional queries, feel free to submit a pull request.


