namespace NodeTunnel.TCP;

public enum RoomFlags : byte
{
    None = 0,
    Unlisted = 1 << 0
}