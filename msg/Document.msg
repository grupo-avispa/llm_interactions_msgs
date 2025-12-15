# Document message representing a chunk extracted from ChromaDB
#
# This message represents a single document or chunk retrieved from the
# ChromaDB vector store during RAG (Retrieval-Augmented Generation) operations.

int32 doc_id
string source
string content
