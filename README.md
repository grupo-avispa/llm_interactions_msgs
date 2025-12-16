# llm_interactions_msgs

![ROS2](https://img.shields.io/badge/ros2-jazzy-blue?logo=ros&logoColor=white)
![License](https://img.shields.io/github/license/grupo-avispa/llm_interactions_msgs)

This package defines custom ROS 2 messages for interacting with language models in a ROS-based system.

## Overview

This package provides messages and services for communication with language models and RAG (Retrieval-Augmented Generation) systems.

## Messages (.msg)

* [Document](msg/Document.msg): Message representing a document chunk extracted from ChromaDB during RAG operations.
* [Metadata](msg/Metadata.msg): Message containing metadata about a document, including source, node name, and node function.

## Actions (.action)

* [UserQueryResponse](action/UserQueryResponse.action): Action for user queries with feedback and response.

## Services (.srv)

* [CallAgent](srv/CallAgent.srv): Service to call an agent with a query.
* [UserQueryResponse](srv/UserQueryResponse.srv): Service for user query responses.
* [RetrieveDocuments](srv/RetrieveDocuments.srv): Service to retrieve relevant documents from the RAG system.
* [StoreDocument](srv/StoreDocument.srv): Service to store a document in the RAG system.

## Installation

### Building from Source

#### Dependencies

- [Robot Operating System (ROS) 2](https://docs.ros.org/en/jazzy/) (middleware for robotics),

#### Building

To build from source, clone the latest version from the main repository into your colcon workspace and compile the package using

```bash
cd colcon_workspace/src
git clone https://github.com/grupo-avispa/llm_interactions_msgs.git -b jazzy
cd ../
rosdep install -i --from-path src --rosdistro jazzy -y
colcon build --symlink-install
