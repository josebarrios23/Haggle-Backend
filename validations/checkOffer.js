const validateOfferAmount = (req, res, next) => {
  const { amount } = req.body;
  if (isNaN(+amount) || parseFloat(+amount) < 0) {
    return res
      .status(400)
      .json({ error: "Offer amount must be a positive number" });
  }
  next();
};

module.exports = { validateOfferAmount };