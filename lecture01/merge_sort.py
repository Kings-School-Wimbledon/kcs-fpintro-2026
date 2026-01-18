def merge_sort(arr):
    if len(arr) <= 1:
        return arr

    mid = len(arr) // 2
    left_half = arr[:mid]
    right_half = arr[mid:]

    sorted_left = merge_sort(left_half)
    sorted_right = merge_sort(right_half)

    return merge(sorted_left, sorted_right)


def merge(left, right):
    sorted_merged = []
    i = 0
    j = 0

    while i < len(left) and j < len(right):
        if left[i] < right[j]:
            sorted_merged.append(left[i])
            i += 1
        else:
            sorted_merged.append(right[j])
            j += 1

    sorted_merged.extend(left[i:])
    sorted_merged.extend(right[j:])

    return sorted_merged