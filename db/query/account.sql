-- name: CreateAccount :one
INSERT into accounts (owner,balance,currency) VALUES ($1,$2,$3)
RETURNING *;