ALTER TABLE customer
ALTER COLUMN customer_id TYPE NUMERIC(12,0) USING customer_id::NUMERIC,
ALTER COLUMN total_reservations TYPE INTEGER USING total_reservations::INTEGER,
ALTER COLUMN total_cancellations TYPE INTEGER USING total_cancellations::INTEGER,
ALTER COLUMN total_actual_stays TYPE INTEGER USING total_actual_stays::INTEGER;

ALTER TABLE lodging
ALTER COLUMN lodging_id TYPE NUMERIC(12,0) USING lodging_id::NUMERIC,
ALTER COLUMN number_of_rooms TYPE INTEGER USING number_of_rooms::INTEGER;

ALTER TABLE inventory
ALTER COLUMN lodging_id TYPE NUMERIC(12,0) USING lodging_id::NUMERIC,
ALTER COLUMN inventory_date TYPE DATE USING inventory_date::DATE,
ALTER COLUMN total_rooms TYPE INTEGER USING total_rooms::INTEGER,
ALTER COLUMN available_rooms TYPE INTEGER USING available_rooms::INTEGER,
ALTER COLUMN booked_rooms TYPE INTEGER USING booked_rooms::INTEGER;

ALTER TABLE reservations
ALTER COLUMN reservation_id TYPE NUMERIC(12,0) USING reservation_id::NUMERIC,
ALTER COLUMN customer_id TYPE NUMERIC(12,0) USING customer_id::NUMERIC,
ALTER COLUMN lodging_id TYPE NUMERIC(12,0) USING lodging_id::NUMERIC,
ALTER COLUMN booking_date TYPE DATE USING booking_date::DATE,
ALTER COLUMN cancellation_penalty TYPE NUMERIC(3,2) USING cancellation_penalty::NUMERIC,
ALTER COLUMN number_of_nights TYPE INTEGER USING number_of_nights::INTEGER,
ALTER COLUMN start_date TYPE DATE USING start_date::DATE,
ALTER COLUMN end_date TYPE DATE USING end_date::DATE,
ALTER COLUMN number_of_adults TYPE INTEGER USING number_of_adults::INTEGER,
ALTER COLUMN number_of_children TYPE INTEGER USING number_of_children::INTEGER,
ALTER COLUMN number_of_babies TYPE INTEGER USING number_of_babies::INTEGER,
ALTER COLUMN total_amount TYPE NUMERIC(20,2) USING total_amount::NUMERIC;

ALTER TABLE pricing
ALTER COLUMN lodging_id TYPE NUMERIC(12,0) USING lodging_id::NUMERIC,
ALTER COLUMN base_price TYPE NUMERIC(20,2) USING base_price::NUMERIC,
ALTER COLUMN high_season_multiplier TYPE NUMERIC(3,2) USING high_season_multiplier::NUMERIC;