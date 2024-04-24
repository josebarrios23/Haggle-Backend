const validateItemName = (req, res, next) => {
  const { name } = req.body;
  if (!name || name.trim() === "") {
    return res.status(400).json({ error: "Item name is required" });
  }
  next();
};

const validateItemDescription = (req, res, next) => {
  const { description } = req.body;
  if (!description || description.trim() === "") {
    return res.status(400).json({ error: "Item description is required" });
  }
  next();
};

const validateItemPrice = (req, res, next) => {
  const { price } = req.body;
  if (isNaN(+price) || parseFloat(+price) < 0) {
    return res
      .status(400)
      .json({ error: "Item price must be a positive number" });
  }
  next();
};

module.exports = {
  validateItemName,
  validateItemDescription,
  validateItemPrice,
};