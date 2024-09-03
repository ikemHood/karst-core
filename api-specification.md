# Karst GraphQL API Specification

## Events

### Follow Events

1. Followed

   - Fields: followed_address, follower_address, follow_id, timestamp

2. Unfollowed

   - Fields: unfollowed_address, unfollower_address, follow_id, timestamp

3. FollowerBlocked

   - Fields: followed_address, blocked_follower, follow_id, timestamp

4. FollowerUnblocked
   - Fields: followed_address, unblocked_follower, follow_id, timestamp

### Profile Events

1. CreatedProfile
   - Fields: owner, profile_address, token_id, timestamp

### Publication Events

1. Post

   - Fields: post, publication_id, transaction_executor, block_timestamp

2. MirrorCreated

   - Fields: mirrorParams, publication_id, transaction_executor, block_timestamp

3. CommentCreated

   - Fields: commentParams, publication_id, transaction_executor, block_timestamp

4. QuoteCreated
   - Fields: quoteParams, publication_id, transaction_executor, block_timestamp

### Handle Events

1. HandleMinted

   - Fields: local_name, token_id, to

2. HandleBurnt
   - Fields: local_name, token_id, from

### Handle Registry Events

1. HandleLinked

   - Fields: handle_id, profile_address, caller, timestamp

2. HandleUnlinked
   - Fields: handle_id, profile_address, caller, timestamp

### ERC721 Events (from OpenZeppelin)

1. Transfer

   - Fields: from, to, token_id

2. Approval

   - Fields: owner, approved, token_id

3. ApprovalForAll
   - Fields: owner, operator, approved

### Ownable Events (from OpenZeppelin)

1. OwnershipTransferred
   - Fields: previous_owner, new_owner

## GraphQL Queries

1. Accounts

   - Query: accounts
   - Description: Retrieve all created profiles
   - Parameters:
     - first: Int (optional, for pagination)
     - after: String (optional, for pagination)
   - Returns: List of Profile objects
   - Example Request:
     ```graphql
     query {
       accounts(first: 2) {
         id
         owner
         profileAddress
         createdAt
       }
     }
     ```
   - Example Response:
     ```json
     {
       "data": {
         "accounts": [
           {
             "id": "1",
             "owner": "0x1234...5678",
             "profileAddress": "0xabcd...ef01",
             "createdAt": "2023-04-15T10:30:00Z"
           },
           {
             "id": "2",
             "owner": "0x9876...5432",
             "profileAddress": "0xfedc...ba98",
             "createdAt": "2023-04-15T11:45:00Z"
           }
         ]
       }
     }
     ```

2. Publications

   - Query: publications
   - Description: Retrieve all publications (posts, comments, mirrors, quotes)
   - Parameters:
     - first: Int (optional, for pagination)
     - after: String (optional, for pagination)
     - type: PublicationType (optional, to filter by type: POST, COMMENT, MIRROR, QUOTE)
   - Returns: List of Publication objects
   - Example Request:
     ```graphql
     query {
       publications(first: 2, type: POST) {
         id
         profileId
         content
         timestamp
         publicationType
       }
     }
     ```
   - Example Response:
     ```json
     {
       "data": {
         "publications": [
           {
             "id": "1",
             "profileId": "5",
             "content": "Hello, Karst!",
             "timestamp": "2023-04-15T14:20:00Z",
             "publicationType": "POST"
           },
           {
             "id": "2",
             "profileId": "8",
             "content": "Excited to join this network!",
             "timestamp": "2023-04-15T15:05:00Z",
             "publicationType": "POST"
           }
         ]
       }
     }
     ```

3. Followers

   - Query: followers
   - Description: Retrieve followers for a given profile
   - Parameters:
     - profileId: ID! (required)
     - first: Int (optional, for pagination)
     - after: String (optional, for pagination)
   - Returns: List of Profile objects
   - Example Request:
     ```graphql
     query {
       followers(profileId: "5", first: 2) {
         id
         profileAddress
         followedAt
       }
     }
     ```
   - Example Response:
     ```json
     {
       "data": {
         "followers": [
           {
             "id": "10",
             "profileAddress": "0x2468...1357",
             "followedAt": "2023-04-16T09:30:00Z"
           },
           {
             "id": "15",
             "profileAddress": "0x1357...2468",
             "followedAt": "2023-04-16T10:15:00Z"
           }
         ]
       }
     }
     ```

4. Following

   - Query: following
   - Description: Retrieve profiles followed by a given profile
   - Parameters:
     - profileId: ID! (required)
     - first: Int (optional, for pagination)
     - after: String (optional, for pagination)
   - Returns: List of Profile objects
   - Example Request:
     ```graphql
     query {
       following(profileId: "5", first: 2) {
         id
         profileAddress
         followedAt
       }
     }
     ```
   - Example Response:
     ```json
     {
       "data": {
         "following": [
           {
             "id": "3",
             "profileAddress": "0x3333...4444",
             "followedAt": "2023-04-17T08:45:00Z"
           },
           {
             "id": "7",
             "profileAddress": "0x7777...8888",
             "followedAt": "2023-04-17T09:30:00Z"
           }
         ]
       }
     }
     ```

5. Handles

   - Query: handles
   - Description: Retrieve all minted handles
   - Parameters:
     - first: Int (optional, for pagination)
     - after: String (optional, for pagination)
   - Returns: List of Handle objects
   - Example Request:
     ```graphql
     query {
       handles(first: 2) {
         id
         localName
         owner
         mintedAt
       }
     }
     ```
   - Example Response:
     ```json
     {
       "data": {
         "handles": [
           {
             "id": "1",
             "localName": "alice",
             "owner": "0xaaaa...bbbb",
             "mintedAt": "2023-04-18T11:00:00Z"
           },
           {
             "id": "2",
             "localName": "bob",
             "owner": "0xcccc...dddd",
             "mintedAt": "2023-04-18T11:30:00Z"
           }
         ]
       }
     }
     ```

6. ProfileByHandle

   - Query: profileByHandle
   - Description: Retrieve a profile by its handle
   - Parameters:
     - handle: String! (required)
   - Returns: Profile object
   - Example Request:
     ```graphql
     query {
       profileByHandle(handle: "alice") {
         id
         owner
         profileAddress
         createdAt
       }
     }
     ```
   - Example Response:
     ```json
     {
       "data": {
         "profileByHandle": {
           "id": "5",
           "owner": "0xaaaa...bbbb",
           "profileAddress": "0xeeee...ffff",
           "createdAt": "2023-04-18T11:05:00Z"
         }
       }
     }
     ```

7. PublicationsByProfile

   - Query: publicationsByProfile
   - Description: Retrieve publications created by a specific profile
   - Parameters:
     - profileId: ID! (required)
     - first: Int (optional, for pagination)
     - after: String (optional, for pagination)
     - type: PublicationType (optional, to filter by type)
   - Returns: List of Publication objects
   - Example Request:
     ```graphql
     query {
       publicationsByProfile(profileId: "5", first: 2, type: POST) {
         id
         content
         timestamp
       }
     }
     ```
   - Example Response:
     ```json
     {
       "data": {
         "publicationsByProfile": [
           {
             "id": "10",
             "content": "My first post on Karst!",
             "timestamp": "2023-04-19T14:00:00Z"
           },
           {
             "id": "15",
             "content": "Loving the community here!",
             "timestamp": "2023-04-20T10:30:00Z"
           }
         ]
       }
     }
     ```

8. BlockedFollowers

   - Query: blockedFollowers
   - Description: Retrieve blocked followers for a given profile
   - Parameters:
     - profileId: ID! (required)
     - first: Int (optional, for pagination)
     - after: String (optional, for pagination)
   - Returns: List of Profile objects
   - Example Request:
     ```graphql
     query {
       blockedFollowers(profileId: "5", first: 2) {
         id
         profileAddress
         blockedAt
       }
     }
     ```
   - Example Response:
     ```json
     {
       "data": {
         "blockedFollowers": [
           {
             "id": "20",
             "profileAddress": "0x2222...3333",
             "blockedAt": "2023-04-21T16:45:00Z"
           },
           {
             "id": "25",
             "profileAddress": "0x4444...5555",
             "blockedAt": "2023-04-22T09:15:00Z"
           }
         ]
       }
     }
     ```

9. TransferHistory

   - Query: transferHistory
   - Description: Retrieve transfer history for a given token (profile or handle)
   - Parameters:
     - tokenId: ID! (required)
     - first: Int (optional, for pagination)
     - after: String (optional, for pagination)
   - Returns: List of Transfer objects
   - Example Request:
     ```graphql
     query {
       transferHistory(tokenId: "5", first: 2) {
         from
         to
         timestamp
       }
     }
     ```
   - Example Response:
     ```json
     {
       "data": {
         "transferHistory": [
           {
             "from": "0x0000...0000",
             "to": "0xaaaa...bbbb",
             "timestamp": "2023-04-18T11:05:00Z"
           },
           {
             "from": "0xaaaa...bbbb",
             "to": "0xcccc...dddd",
             "timestamp": "2023-04-23T14:30:00Z"
           }
         ]
       }
     }
     ```

10. OwnershipHistory

    - Query: ownershipHistory
    - Description: Retrieve ownership transfer history
    - Parameters:
      - first: Int (optional, for pagination)
      - after: String (optional, for pagination)
    - Returns: List of OwnershipTransfer objects
    - Example Request:
      ```graphql
      query {
        ownershipHistory(first: 2) {
          previousOwner
          newOwner
          timestamp
        }
      }
      ```
    - Example Response:
      ```json
      {
        "data": {
          "ownershipHistory": [
            {
              "previousOwner": "0xaaaa...bbbb",
              "newOwner": "0xcccc...dddd",
              "timestamp": "2023-04-14T16:45:00Z"
            },
            {
              "previousOwner": "0xcccc...dddd",
              "newOwner": "0xeeee...ffff",
              "timestamp": "2023-04-17T11:30:00Z"
            }
          ]
        }
      }
      ```

11. Mirrors

    - Query: mirrors
    - Description: Retrieve all mirrors
    - Parameters:
      - first: Int (optional, for pagination)
      - after: String (optional, for pagination)
      - profileId: ID (optional, to filter by profile)
    - Returns: List of Mirror objects
    - Example Request:
      ```graphql
      query {
        mirrors(first: 2) {
          id
          profileId
          mirroredPublicationId
          timestamp
        }
      }
      ```
    - Example Response:
      ```json
      {
        "data": {
          "mirrors": [
            {
              "id": "1",
              "profileId": "5",
              "mirroredPublicationId": "10",
              "timestamp": "2023-04-25T09:30:00Z"
            },
            {
              "id": "2",
              "profileId": "8",
              "mirroredPublicationId": "15",
              "timestamp": "2023-04-25T10:15:00Z"
            }
          ]
        }
      }
      ```

12. Comments

    - Query: comments
    - Description: Retrieve all comments
    - Parameters:
      - first: Int (optional, for pagination)
      - after: String (optional, for pagination)
      - profileId: ID (optional, to filter by profile)
      - publicationId: ID (optional, to filter by parent publication)
    - Returns: List of Comment objects
    - Example Request:
      ```graphql
      query {
        comments(first: 2, publicationId: "10") {
          id
          profileId
          content
          parentId
          timestamp
        }
      }
      ```
    - Example Response:
      ```json
      {
        "data": {
          "comments": [
            {
              "id": "1",
              "profileId": "5",
              "content": "Great post!",
              "parentId": "10",
              "timestamp": "2023-04-26T11:00:00Z"
            },
            {
              "id": "2",
              "profileId": "8",
              "content": "I agree with this.",
              "parentId": "10",
              "timestamp": "2023-04-26T11:30:00Z"
            }
          ]
        }
      }
      ```

13. Quotes
    - Query: quotes
    - Description: Retrieve all quotes
    - Parameters:
      - first: Int (optional, for pagination)
      - after: String (optional, for pagination)
      - profileId: ID (optional, to filter by profile)
    - Returns: List of Quote objects
    - Example Request:
      ```graphql
      query {
        quotes(first: 2) {
          id
          profileId
          content
          quotedPublicationId
          timestamp
        }
      }
      ```
    - Example Response:
      ```json
      {
        "data": {
          "quotes": [
            {
              "id": "1",
              "profileId": "5",
              "content": "This is an important point!",
              "quotedPublicationId": "20",
              "timestamp": "2023-04-27T13:45:00Z"
            },
            {
              "id": "2",
              "profileId": "8",
              "content": "Interesting perspective on this.",
              "quotedPublicationId": "25",
              "timestamp": "2023-04-27T14:30:00Z"
            }
          ]
        }
      }
      ```
