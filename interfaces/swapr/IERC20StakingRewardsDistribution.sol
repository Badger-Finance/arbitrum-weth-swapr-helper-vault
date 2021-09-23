// SPDX-License-Identifier: MIT

pragma solidity ^0.6.11;
pragma experimental ABIEncoderV2;

interface IERC20StakingRewardsDistribution {
    /// @dev BalanceOf
    function stakedTokensOf(address) external view returns (uint256 balance);

    /// @dev deposit amount
    function stake(uint256 _amount) external;

    /// @dev withdraw some
    function withdraw(uint256 _amount) external;

    /// @dev get all rewards until now
    function claimAll(address _recipient) external;

    /// @dev Withdraw all and get rewards too
    function exit(address _recipient) external;
}
