const express = require("express");
const items = express.Router();

const { 
  getAllItems, 
  getItemById, 
  createItem,
  updateItemById,
  deleteItemById,
} = require('../queries/item');

items.get("/", async (req, res) => {
  try {
    const allItems = await getAllItems();
    res.status(200).json(allItems);
  } catch (error) {
    res.status(500).json({ error: 'Server error' });
  }
});

items.get("/:id", async (req, res) => {
  const { id } = req.params;
  try {
    const item = await getItemById(id);
    if (item) {
      res.status(200).json(item);
    } else {
      res.status(404).json({ error: 'Item not found with this ID' });
    }
  } catch (error) {
    res.status(500).json({ error: 'Server error' });
  }
});

items.post('/', async (req, res) => {
  try {
    const newItem = await createItem(req.body);
    res.status(201).json(newItem);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

items.put("/:id", async (req, res) => {
  const { id } = req.params;
  try {
    const updatedItem = await updateItemById(id, req.body);
    res.status(200).json(updatedItem);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

items.delete("/:id", async (req, res) => {
  const { id } = req.params;
  try {
    const deletedItem = await deleteItemById(id);
    res.status(200).json(deletedItem);
  } catch (error) {
    res.status(404).json({ error: 'Item not found with this ID' });
  }
});

module.exports = items;