# llm_interactions_msgs

This package defines custom ROS 2 action messages for interacting with language models in a ROS-based system.
The main resource is the `UserQueryResponse.action`, designed to model communication between a user and a response-generating system.

## Action Definition

The `UserQueryResponse.action` consists of three sections: **request**, **response**, and **feedback**.

### Request

```plaintext
string user_name        # Interacting user's name
string user_query       # Input query from the user
```

### Response

```plaintext
string response_text    # Generated response to the user's query
float32 elapsed_time    # Time taken to generate the response (in seconds)
```

### Feedback

```plaintext
string status           # Status of the process (e.g., "completed", "failed")
```

## Usage

This package is intended to be used as a dependency in nodes that require sending and receiving custom action messages.

Example import in Python:

```python
from llm_interactions_msgs.action import UserQueryResponse
```

Example import in C++:

```cpp
#include "llm_interactions_msgs/action/user_query_response.hpp"
```

## Dependencies

* ROS 2 (>= Humble)
* `action_msgs`
* `builtin_interfaces`

## Installation

Clone this package into your ROS 2 workspace:

```bash
cd ~/ros2_ws/src
git clone <repository_url>
cd ~/ros2_ws
colcon build --packages-select llm_interactions_msgs --symlink-install
source install/setup.bash
```
