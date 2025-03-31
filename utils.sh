

setup_build_environment() {
    # Create the build and publish directories
    mkdir -p BUILDROOT PUBLISH

    # Change to the build directory
    cd BUILDROOT
}

# Function to clone a git repository and checkout a specific commit
# Usage: clone_repo <repository_url> <commit_id> [<destination_directory>]
clone_repo() {
    # Check if at least two arguments are provided
    if [ $# -lt 2 ]; then
        echo "Error: Repository URL and commit ID are required"
        echo "Usage: clone_repo <repository_url> <commit_id> [<destination_directory>]"
        return 1
    fi

    echo "::group::=== Cloning $(basename "$MODFILE")==="

    # Get the repository URL and commit ID
    local repo_url="$1"
    local commit_id="$2"

    # Get the destination directory or use the repo name by default
    local repo_name=$(basename "$repo_url" .git)
    local dest_dir="${3:-$repo_name}"

    echo "Cloning repository $repo_url into $dest_dir..."

    # Clone the repository
    git clone "$repo_url" "$dest_dir"

    # Check if clone was successful
    if [ $? -ne 0 ]; then
        echo "Error: Failed to clone repository"
        return 1
    fi

    # Change to the cloned repository directory
    cd "$dest_dir" || {
        echo "Error: Failed to navigate to $dest_dir"
        return 1
    }

    # Checkout the specified commit
    echo "Checking out commit $commit_id..."
    git checkout "$commit_id"

    # Check if checkout was successful
    if [ $? -ne 0 ]; then
        echo "Error: Failed to checkout commit $commit_id"
        cd - > /dev/null
        return 1
    fi

    echo "Repository cloned successfully to $dest_dir and checked out commit $commit_id"
    return 0
}