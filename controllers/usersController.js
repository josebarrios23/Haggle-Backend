const express = require("express");
const users = express.Router();

const { getAllUsers, getUserById } = require("../queries/users");
const { getAllItems } = require("../queries/item");

users.get("/", async (req, res) => {
  try {
    const allUsers = await getAllUsers();
    res.status(200).json(allUsers);
  } catch (error) {
    res.status(500).json({ error: "Server error" });
  }
});

users.get("/:id", async (req, res) => {
  const { id } = req.params;
  try {
    const allItems = await getAllItems();
    const user = await getUserById(id);
    const filteredItems = allItems.filter(
      (item) => user.id === item.user_id
    );
    if (user) {
      res.status(200).json({ ...user, filteredItems });
    } else {
      res.status(404).json({ error: "User not found with this ID" });
    }
  } catch (error) {
    res.status(500).json({ error: "Server error" });
  }
});

module.exports = users;