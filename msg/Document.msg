# Document message representing a chunk extracted from ChromaDB
#
# This message represents a single document or chunk retrieved from the
# ChromaDB vector store during RAG (Retrieval-Augmented Generation) operations.

int32 id            # Unique identifier for the document
string content      # Text content of the document
Metadata metadata   # Metadata associated with the document
