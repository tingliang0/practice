package factory

import (
	"errors"
	"fmt"
)

type PaymentMethod interface {
	Pay(amount float32) string
}

const (
	Cash      = 1
	DebitCard = 2
)

type CashPM struct {
}

func (c *CashPM) Pay(amount float32) string {
	return fmt.Sprintf("%0.2f paid using cash\n", amount)
}

type DebitCardPM struct {
}

func (d *DebitCardPM) Pay(amount float32) string {
	return fmt.Sprintf("%0.2f paid using debit card\n", amount)
}

func GetPaymentMethod(m int) (PaymentMethod, error) {
	switch m {
	case Cash:
		return new(CashPM), nil
	case DebitCard:
		return new(DebitCardPM), nil
	default:
		return nil, errors.New(fmt.Sprintf("Payment method %d not recognized\n", m))
	}
}
