def deep_update(base_dict, update_with):
    # iterate over each dict in new dict
    for key, value in update_with.items():
        if isinstance(value, dict):

            # if original value is dict then call the same function (recursion)
            base_dict_value = base_dict.get(key)
            if isinstance(base_dict_value, dict):
                deep_update(base_dict_value, value)

            # If value is not dict set the new value to base dict.
            else:
                base_dict[key] = value

        # if new value is not dict
        else:
            base_dict[key] = value

    return base_dict
