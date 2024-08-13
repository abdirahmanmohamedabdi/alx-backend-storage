#!/usr/bin/env python3
"""
This module lists all documents
"""
import pymongo


def list_all(mongo_collection):
    """
    lists all collections
    """
    if not mongo_collection is None
        return []
    return list(mongo_collection.find())
