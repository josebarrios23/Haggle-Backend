const db = require('../db/dbconfig');

const getAllItems = async () => {
  try {
    const allItems = await db.any('SELECT * FROM items');
    return allItems;
  } catch (error) {
    return error;
  }
};

const getItemById = async (id) => {
  try {
    const oneItem = await db.one('SELECT * FROM items WHERE id=$1', id);
    return oneItem;
  } catch (error) {
    return error;
  }
};

const createItem = async (item) => {
  const { user_id, name, description, price, image_url, created_at } = item;
  try {
    const newItem = await db.one(
      'INSERT INTO items (user_id, name, description, price, image_url, created_at) VALUES($1, $2, $3, $4, $5, $6) RETURNING *',
      [user_id, name, description, price, image_url, created_at]
    );
    return newItem;
  } catch (error) {
    return error;
  }
};

const deleteItemById = async (id) => {
  try {
    await db.none('DELETE FROM offers WHERE item_id = $1', id);

    const deletedItem = await db.one(
      'DELETE FROM items WHERE id = $1 RETURNING *',
      id
    );
    return deletedItem;
  } catch (error) {
    return error;
  }
};

const updateItemById = async (id, item) => {
  const { user_id, name, description, price, image_url, created_at } = item;
  try {
    const updatedItem = await db.one(
      'UPDATE items SET user_id=$1, name=$2, description=$3, price=$4, image_url=$5, created_at=$6 WHERE id=$7 RETURNING *',
      [user_id, name, description, price, image_url, created_at, id]
    );
    return updatedItem;
  } catch (error) {
    return error;
  }
};

module.exports = {
  getAllItems,
  getItemById,
  createItem,
  deleteItemById,
  updateItemById
};
