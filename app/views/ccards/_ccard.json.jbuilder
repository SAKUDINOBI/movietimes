json.extract! ccard, :id, :card_issuer, :card_number, :name_on_card, :exp_date, :customer_id, :created_at, :updated_at
json.url ccard_url(ccard, format: :json)
